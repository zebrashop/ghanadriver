select a.prs_id, a.tst_id, a.exa_date_taken, a.tqu_id, a.que_id, a. alt_id, e.exa_count_tqu_correct from quagga_examination e, quagga_answer a where a.prs_id = e.prs_id and a.tst_id = e.tst_id and a.exa_date_taken = e.exa_date_taken order by e.exa_date_taken DESC