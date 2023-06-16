package com.widen.util.td;


import org.junit.jupiter.api.Test;

import static org.hamcrest.CoreMatchers.containsString;
import static org.hamcrest.CoreMatchers.not;
import static org.hamcrest.MatcherAssert.assertThat;

public class TestDeadlock
{

    @Test
    public void testDeadlockThreadDump() throws InterruptedException {
        DeadlockThread.startThreads();
        Thread.sleep(1000);
        JvmThreadDumpImpl out = new JvmThreadDumpImpl();
        String dump = out.generate();
        assertThat(dump, containsString("Memory: used/max"));
        assertThat(dump, not(containsString("Deadlocked Threads: None")));
    }

}
