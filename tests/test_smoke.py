import unittest

import chardet


class SmokeTest(unittest.TestCase):
    def test_smoke(self) -> None:
        self.assertEqual(1 + 1, 2)

    def test_chardet_detects_utf8_text(self) -> None:
        data = "café été déjà vu ".encode("utf-8") * 4

        detected = chardet.detect(data)

        self.assertEqual(detected.get("encoding", "").lower(), "utf-8")
