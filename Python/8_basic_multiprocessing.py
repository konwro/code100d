# ref: https://www.digitalocean.com/community/tutorials/python-multiprocessing-example

import multiprocessing

# get number of available CPUs
# print("Number of available CPUs: ", multiprocessing.cpu_count())

# basic structure - Process class

from multiprocessing import Lock, Process, Queue, current_process
import time
import queue 


def do_job(tasks_to_do, tasks_done):
    while True:
        try:
            '''
                try to get task from the queue.
            '''
            task = tasks_to_do.get_nowait()
        except queue.Empty:

            break
        else:
            '''
                add the task completion message
            '''
            print(task)
            tasks_done.put(task + ' is done by ' + current_process().name)
            time.sleep(.5)
    return True


def main():
    no_of_task = 100
    no_of_processes = 3
    tasks_to_do = Queue()
    tasks_done = Queue()
    processes = []

    for i in range(no_of_task):
        tasks_to_do.put("Task no " + str(i))

    # creating processes
    for w in range(no_of_processes):
        p = Process(target=do_job, args=(tasks_to_do, tasks_done))
        processes.append(p)
        p.start()

    # completing process
    for p in processes:
        p.join()

    # print the output
    while not tasks_done.empty():
        print(tasks_done.get())

    return True


if __name__ == '__main__':
    main()
