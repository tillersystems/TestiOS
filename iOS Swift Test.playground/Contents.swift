import Foundation

// -------------------------------------------------------- \\
// MARK - Environment / needed ressources

/// Different kind of possible errors after a job execution
enum JobErrors: Error {
    case notImplemented
    case canceled
    case timeout
}

extension JobErrors: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .notImplemented: return "Not Implemented"
        case .canceled: return "Canceled"
        case .timeout: return "Timeout"
        }
    }
}

enum JobStatus {
    case waiting
    case inProgress
    case done
    case canceled
}

/// Simple struct to describe a Job error
struct JobError: Error {
    /// Permit to know what's kind of error it is.
    public var error: JobErrors
    /// Aditional information, depend of the context
    public var data: Any?
}

typealias JobInfo = Optional<Any>
typealias JobResult = Result<JobInfo, JobError>

/// Protocol to define minimal requirement to describe a Job
protocol Job {
    /// Unique identifier to identify current job
    var identifier: String { get }
    /// Current status of  job
    var status: JobStatus { get }
    /// Job work
    func execute() -> JobResult

    func cancel() -> Void
}

/// Protocol to define minimal requirements to descript a Job queue
protocol JobQueue {

    // MARK: - JobQueue properties

    /// Identifier can be usefull to differenciate multiple job queues
    var identifier: String { get }
    /// Job items waiting to process
    var jobs: [Job] { get }

    /// Serial queue to execute Jobs
    var queue: DispatchQueue { get }

    // MARK: - JobQueue methods

    /// This job queue is an auto-executed job queue
    /// So, when you enqueue a job, it's executed as soon as posible
    func enqueue(job: Job, completion: @escaping (JobResult) -> Void)

    /// You can cancel a job
    func cancelJob(with jobIdentifier: String)

    /// You can cancel all jobs
    func cancelAll()
}

// -------------------------------------------------------- \\

// -------------------------------------------------------- \\
// MARK: - TODO -
// You are free to edit what's you want !

// GOAL: Manage async job execution in a serial queue: handle success and error, have a look on queue execution...
// Example in a real world: manage print jobs on a printer.

// 1 - Implement previous protocols:
//     a. An AsyncJob, which implement a Job
//     b. a TestQueue which implement a Jobqueue
// 2 - In Job execute() -> generate a async job which print a console log after X seconds. X is Int number
//     between 1 and 10. Job have a timeout error after 5seconds waiting.
// 3 - Complete main func
// 4 - Complete main2 func

// There is a lot of "Solution". Some of them are simpler, other more complexe. Keep in mind to justify your
// choice during the interview and know how to make it different of better.

// MARK: - 1.a
class AsyncJob: Job {

    var status: JobStatus = .waiting
    var identifier: String

    public init(identifier: String) {
        self.identifier = identifier
    }

    func cancel() {
        guard status != .done else { return }
        status = .canceled
    }

    func execute() -> JobResult {
        status = .inProgress
        defer {
            status = .done
        }

        guard status != .canceled else {
            return .failure(JobError(error: JobErrors.canceled, data: self))
        }

        let x = Int.random(in: 1..<10)

        let group = DispatchGroup()

        group.enter()
        DispatchQueue.main.asyncAfter(deadline: .now() + Double(x), execute: {
            if self.status != .done {
                print("Job \(self.identifier): success")
            }
            group.leave()
        })

        if group.wait(timeout: .now() + 5) == .success {
            return .success(JobInfo(self))
        }
        status = .done
        return .failure(JobError(error: JobErrors.timeout, data: self))
    }
}

// MARK: - 1.b
class TestQueue: JobQueue {
    var identifier: String

    var jobs: [Job] = []

    var queue: DispatchQueue

    public init(identifier: String) {
        self.identifier = identifier
        self.queue = DispatchQueue(label: "\(identifier)", qos: .utility)
    }

    func enqueue(job: Job, completion: @escaping (JobResult) -> Void) {
        jobs.append(job)
        queue.async(execute: {
            completion(job.execute())
            self.jobs = self.jobs.filter { $0.identifier == job.identifier }
        })
    }

    func cancelJob(with jobIdentifier: String) {
        jobs.first(where: { $0.identifier == identifier })?.cancel()
    }

    func cancelAll() {
        jobs.forEach { $0.cancel() }
    }
}

// MARK: - 3
func main() {
    let queue = TestQueue(identifier: "test")

    let jobs = [
        AsyncJob(identifier: "1"),
        AsyncJob(identifier: "2"),
        AsyncJob(identifier: "3")
    ]

    let group = DispatchGroup()

    jobs.forEach {
        group.enter()
        queue.enqueue(job: $0, completion: { result in
            var description = ""
            switch result {
            case .success(let job):
                guard let job = job as? AsyncJob else {
                    description = "Success"
                    break
                }
                description = "Success \(job.identifier)"
                case .failure(let error): description = "error \(error.error.localizedDescription)"
            }
            print("Completion job: \(description)")
            group.leave()
        })
    }

    group.notify(queue: .main, execute: {
        print("All job executed !!")
    })
}

// MARK: - 4
func main2() {
    let queue = TestQueue(identifier: "test2")

    let jobs = [
        AsyncJob(identifier: "1"),
        AsyncJob(identifier: "2"),
        AsyncJob(identifier: "3")
    ]

    let group = DispatchGroup()

    jobs.forEach {
        group.enter()
        queue.enqueue(job: $0, completion: { result in
            var description = ""
            switch result {
                case .success(let job):
                    guard let job = job as? AsyncJob else {
                        description = "Success"
                        break
                    }
                    description = "Success \(job.identifier)"
                case .failure(let error): description = "error \(error)"
            }
            print("Completion job: \(description)")
            group.leave()
        })
    }

    group.notify(queue: .main, execute: {
        print("All job executed !!")
    })

    queue.cancelJob(with: "job2")
    queue.cancelAll()
}


main()
main2()
