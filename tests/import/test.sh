#!/bin/bash
. /usr/share/beakerlib/beakerlib.sh || exit 1

rlJournalStart
    rlPhaseStartTest
        rlRun "rlImport distribution/mcase"
    rlPhaseEnd
rlJournalEnd
