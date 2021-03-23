import Foundation

// -------------------------------------------------------- \\
// MARK - Environment / needed ressources

/// Different kind of possible errors after a job execution
enum Errors: Error {
    case notImplemented
    case timeout
}

/// Simple struct to describe a Job error
struct JobError: Error {
    /// Permit to know what's kind of error it is.
    public var error: Errors
    /// Aditional information, depend of the context
    public var data: Any?
}

typealias JobInfo = Optional<Any>
typealias JobResult = Result<JobInfo, JobError>

/// Protocol to define minimal requirement to describe a Job
protocol Job {
    /// Unique identifier to identify current job
    var identifier: String { get }
    /// Job work
    func execute() -> JobResult
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
    func enqueue(job: Job, completion: (JobResult) -> Void)

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

// MARK: - 1.a
struct AsyncJob: Job {
    var identifier: String

    func execute() -> JobResult {
        // Execute an async job which wait random second (between 1 and 10) before print it self (identifier). Add a timeout after  5second, and  return an error.

        return .failure(JobError(error: Errors.notImplemented, data: self))
    }
}

// MARK: - 1.b
struct TestQueue: JobQueue {
    var identifier: String

    var jobs: [Job]

    var queue: DispatchQueue

    func enqueue(job: Job, completion: (JobResult) -> Void) {
        // Enqueue Job and execute it
    }

    func cancelJob(with jobIdentifier: String) {
        // cancel given Job
    }

    func cancelAll() {
        // Cancel all jobs
    }
}

// MARK: - 3
func main() {
    // 1 - Enqueue Jobs

    // 2 - Execute them

    // 3 - Print error when happens

    // 4 - print end  when all jobs are done
}

// MARK: - 4
func main2() {
    // Prepare queue like previous func

    // 1 - Cancel one job and check that callback print an error

    // 2 - cancel all jobs and check that all callback print error
}
