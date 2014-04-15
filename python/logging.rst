=========
logging
=========

Sample Code
=============

::

  import logging

  # create logger
  logger = logging.getLogger('simple_example')
  logger.setLevel(logging.DEBUG)

  # create formatter
  formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
  fh = logging.FileHandler(os.path.dirname(os.path.abspath(__file__)) + "/hoge.log")

  # add formater
  fh.setFormatter(formatter)
  logger.addHandler(fh)

  logger.debug('debug message')
  logger.info('info message')
  logger.warning('warning message')
