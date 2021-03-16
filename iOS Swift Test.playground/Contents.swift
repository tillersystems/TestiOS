//: Playground - noun: a place where people can play

import Foundation

struct JobError: Error {
    public var error: Error
    public var data: Any?
}

typealias JobInfo = Optional<Any>
typealias JobResult = Result<JobInfo, JobError>

protocol Job {
    var identifier: String { get }
    /// Job work
    func execute() -> JobResult
}

enum JobErrors: Error {
    case notImplemented
}

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


// MARK: - TODO -
// You are free to edit what's you want !

struct AsyncJob: Job {
    var identifier: String

    func execute() -> JobResult {
        // Execute an async job which wait random second (between 1 and 10) before print it self (identifier). Add a timeout after  5second, and  return an error.

        return .failure(JobError(error: JobErrors.notImplemented, data: self))
    }
}

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


func main() {
    // 1 - Enqueue Jobs

    // 2 - Execute them

    // 3 - Print error when happens

    // 4 - print end  when all jobs are done
}

func mainCancel() {
    // Prepare queue like previous func

    // 1 - Cancel one job and check that callback print an error

    // 2 - cancel all jobs and check that all callback print error
}
