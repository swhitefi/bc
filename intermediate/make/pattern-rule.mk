# pattern-rule.mk

figure-%.svg : summary-%.dat
	python create_figure.py $@ $^

summary-1.dat : data-1-*.dat
	python stats.py $@ $^

summary-2.dat : data-2-*.dat
	python stats.py $@ $^

summary-1.dat : stats.py
summary-2.dat : stats.py
