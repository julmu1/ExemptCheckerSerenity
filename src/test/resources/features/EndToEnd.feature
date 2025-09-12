Feature: End to end
  Scenario Outline: End to end of all services through Am I Exempt
    Given I am checking to see if I am exempt from paying for prescriptions
    When my date of birth is "<day>" "<month>" "<year>"
    And my firstname is "<firstname>" and my lastname is "<lastname>"
    And my postcode is "<postcode>"
    Then I will see "<output>" and my "<expirydate>"
    @Regression  @2738 @2739
    Examples:
      | day | month | year | firstname | lastname | postcode | output                                | expirydate       |
  #active matex
      | 21  | 09    | 1995 | TestE     | Smith    | L15 3JY  | Result Prescription Dental Exemption  | 31 December 2029 |
      | 21  | 09    | 1995 | TestB     | Swallow  | L15 3JY  | Result Prescription Dental Exemption  | 31 December 2099 |
  #expired record
      | 21  | 09    | 1995 | TestC     | Hughes   | L15 3JY  | No Match                              |                  |
  #deleted record
      | 21  | 09    | 1995 | TestD     | Kelsey   | LN16 9NY | No Match                              |                  |

  #active medex
      | 01  | 01    | 1980 | TestE     | Bellamy  | HA3 7TE  | Result Prescription Exemption         | 31 December 2099 |
  #expired record
      | 01  | 01    | 1970 | TestF     | Walmsley | GU18 5YQ | No Match                              |                  |
  #deleted record
      | 21  | 09    | 1987 | TestG     | Kashif   | UB3 4BG  | No Match                              |                  |

  #active ppc
      | 31  | 12    | 2000 | TestH     | Shelvey  | LN16 9NY | Result Prescription Exemption         | 31 December 2099 |
  #active defaulter
      | 01  | 09    | 1988 | TestI     | Weir     | LN16 9NY | Result Prescription Exemption         | 31 December 2099 |
  #expired record
      | 18  | 01    | 2000 | TestJ     | Scholes  | LN16 9NY | No Match                              |                  |
  #deleted record
      | 01  | 01    | 1990 | TestK     | Partrey  | NE1 6SN  | No Match                              |                  |

  #active tax credits
      | 01  | 04    | 1990 | TestL     | Charles  | BC34 5EF | Result Prescription Dental Exemption  | 31 December 2099 |
  #expired record
      | 09  | 04    | 1990 | TestM     | Holder   | TN38 9EF | No Match                              |                  |
  #deleted record
      | 01  | 04    | 1990 | TestN     | Chapple  | LN16 9NY | No Match                              |                  |

  #active hc2
      | 01  | 01    | 1993 | HcTwo     | Active   | L15 3JY  | Result Prescription Dental Exemption  | 28 March 2029     |
  #expired record
      |  02  | 01    | 1993 | HcTwo     | Expired  | L15 3JY  | No Match                              |                   |

  #active hc2a
      |  03  | 01    | 1993 | HcTwoA    | Active   | L15 3JY  | Result Prescription Dental Exemption  | 31 December 2099     |
  #expired record
      |  04  | 01    | 1993 | HcTwoA    | Expired  | L15 3JY  | No Match                              |                   |

#
#
#    @Build_Acceptance
#    Examples:
#      | day | month | year | firstname | lastname | postcode | output                                | expirydate       |
#    #active ppc
#      | 31  | 12    | 2000 | TestH     | Shelvey  | LN16 9NY | Result Prescription Exemption         | 31 December 2099 |
#    #expired record
#      | 18  | 01    | 2000 | TestJ     | Scholes  | LN16 9NY | No Match                              |                  |
#    #active hc2
#      | 01  | 01    | 1993 | HcTwo     | Active   | L15 3JY  | Result Prescription Dental Exemption  | 28 March 2029     |
#    #active tax credits
#      | 01  | 04    | 1990 | TestL     | Charles  | BC34 5EF | Result Prescription Dental Exemption  | 31 December 2099 |
#    #active medex
#      | 01  | 01    | 1980 | TestE     | Bellamy  | HA3 7TE  | Result Prescription Exemption         | 31 December 2099 |
#    #active hc2a
#      | 03  | 01    | 1993 | HcTwoA    | Active   | L15 3JY  | Result Prescription Dental Exemption  | 31 December 2099     |
#    #active matex
#      | 21  | 09    | 1995 | TestB     | Swallow  | L15 3JY  | Result Prescription Dental Exemption  | 31 December 2099 |
#
#
#    @Stage_Build_Acceptance
#    Examples:
#      | day | month | year | firstname        | lastname         | postcode  | output                               | expirydate       |
#      | 07  | 10    | 2000 | Fabrico          | SEDDON           | DN8 5SZ   | Result Prescription Dental Exemption | 31 December 2099 |
#      | 28  | 02    | 2000 | Pamela           | LINTON           | DN20 0LQ  | Result Prescription Dental Exemption | 31 December 2099 |
#      | 28  | 02    | 2000 | Pamela           | KEATES           | A9 9AA    | Result Prescription Dental Exemption | 31 December 2099 |
#      | 14  | 07    | 1987 | Rose             | Burn             | HP2 5PL   | No Match                             | 31 October 2024  |
#      | 02  | 01    | 2001 | ZAVIA            | FEIRN            | DN16 2LF  | Result Prescription Dental Exemption | 1 January 2099   |
#      | 23  | 09    | 1981 | Myrtle           | BISSET           | A9 9AA    | Result Prescription Dental Exemption | 1 January 2099   |
#      | 23  | 02    | 2000 | Minnie           | McGEE            | DN16 3HZ  | Result Prescription Dental Exemption | 1 January 2099   |
#      | 01  | 01    | 1991 | Lucy             | BISSETfail       | NE12 8SN  | Result Prescription Dental Exemption | 31 December 2029 |
#      | 01  | 06    | 1994 | Molly            | TYRER            | DN39 6TJ  | Result Prescription Dental Exemption | 1 January 2099   |
#      | 30  | 09    | 1992 | Shaun            | WALTON           | DN16 2JJ  | Result Prescription Exemption        | 31 December 2029 |
#      | 28  | 01    | 1997 | NIC-QTP-DONOTUSE | XXTESTPATIENTRAPK| LS1 6AE   | Result Prescription Dental Exemption | 28 July 2028     |
#      | 29  | 04    | 1983 | Eva              | XXXXXXXXX        | DN17 2PJ  | Result Prescription Dental Exemption | 15 November 2097 |
#      | 23  | 01    | 1990 | James            | Maternity        | DN19 7RF  | Result Prescription Dental Exemption | 15 November 2097 |
#      | 25  | 09    | 1984 | Alicia NEETI     | XXXXXXXXX NEETI  | DN39 6UJ  | Result Prescription Dental Exemption | 15 November 2097 |
#      | 18  | 07    | 1992 | PREETI           | XXXXXXXXX        | DN16 2NU  | Result Prescription Exemption        | 15 November 2097 |
#      | 14  | 08    | 1984 | CHARANJOT        | PAL              | DN17 4JW  | Result Prescription Exemption        | 15 November 2097 |
#      | 08  | 04    | 2001 | Oscar            | XXXXXXXXX        | DN17 3AD  | Result Prescription Dental Exemption | 15 November 2097 |
#      | 23  | 11    | 2000 | Verena           | BOWES            | DN17 2DL  | Result Prescription Dental Exemption | 15 November 2097 |
#      | 07  | 12    | 1993 | Nancie Vera      | EVASON           | DN20 9JZ  | Result Prescription Exemption        | 31 December 2079 |
#      | 07  | 12    | 1993 | Nancie Vera      | EVASON           | DN20 9JZ  | Result Prescription Exemption        | 31 December 2079 |
#      | TC21   | 07  | 12    | 1993 | Nancie Vera      | EVASON           | DN20 9JZ  | Result Prescription Exemption        | 31 December 2079 |
#      | TC22   | 30  | 03    | 1999 | Evelyn           | LINDON           | DN9 1AR   | Result Prescription Exemption        | 31 December 2099 |
#      | TC23   | 30  | 03    | 1999 | Evelyn           | LINDON           | DN9 1AR   | Result Prescription Exemption        | 31 December 2099 |
#      | TC24   | 29  | 08    | 2000 | Pansy            | BRABEN           | DN39 6SG  | Result Prescription Dental Exemption | 31 October 2025  |
#      | TC25   | 25  | 09    | 1984 | Alicia Kate      | VERDI            | DN39 6UJ  | Result Prescription Dental Exemption | 31 October 2025  |
#      | TC26   | 01  | 01    | 1991 | TCPHDQZW         | McDefaulter      | NE12 8SN  | No Match                             | 31 December 2024 |
#      | TC27   | 18  | 07    | 1992 | PREETI HARSHADA  | DINATH           | DN16 2NU  | Result Prescription Exemption        | 1 January 2027   |
#      | TC28   | 18  | 07    | 1992 | PREETI HARSHADA  | DINATH           | DN16 2NU  | Result Prescription Exemption        | 1 January 2027   |
#      | TC29   | 18  | 07    | 1992 | PREETI HARSHADA  | DINATH           | DN16 2NU  | Result Prescription Exemption        | 1 January 2027   |
#      | TC30   | 18  | 07    | 1992 | PREETI HARSHADA  | DINATH           | DN16 2NU  | Result Prescription Exemption        | 1 January 2027   |
#      | TC31   | 14  | 08    | 1984 | CHARANJOT KAUR   | PAL              | DN17 4JW  | Result Prescription Exemption        | 1 January 2027   |
#      | TC32   | 14  | 08    | 1984 | CHARANJOT KAUR   | PAL              | DN17 4JW  | Result Prescription Exemption        | 1 January 2027   |
#      | TC33   | 14  | 08    | 1984 | CHARANJOT KAUR   | PAL              | DN17 4JW  | Result Prescription Exemption        | 1 January 2027   |
#      | TC34   | 14  | 08    | 1984 | CHARANJOT KAUR   | PAL              | DN17 4JW  | Result Prescription Exemption        | 1 January 2027   |
#      | TC35   | 30  | 03    | 1999 | EVELYN JUDITH    | LINDON           | DN9 1AR   | Result Prescription Exemption        | 31 December 2099 |
#      | TC36   | 30  | 03    | 1999 | EVELYN JUDITH    | LINDON           | DN9 1AR   | Result Prescription Exemption        | 31 December 2099 |
#    #| TC37   | 28  | 11    | 1980 | qsuvomzb         | ikpfaxjg         | NE15 8NY  | No Match                             | 31 December 2024 |
#      | TC38   | 28  | 11    | 1980 | qsuvomzb         | ikpfaxjg         | NE15 8NY  | Result Prescription Exemption        | 31 December 2028 |
#      | TC39   | 01  | 01    | 1991 | Omkar            | Awasare          | PO1 4AX   | No Match                             | 31 May 2024      |
#      | TC40   | 01  | 01    | 1982 | tfname           | tflname          | PO1 4AX   | No Match                             | 24 May 2024      |
#      | TC41   | 12  | 11    | 1981 | scott            | slifer           | NE15 8NY  | No Match                             | 16 June 2024     |
#      | TC42   | 15  | 03    | 1984 | Firstname        | Lastname         | PO1 4AX   | No Match                             | 19 June 2024     |
#      | TC43   | 01  | 01    | 1991 | test             | test             | PO1 4AX   | No Match                             | 4 July 2024      |
#      | TC44   | 01  | 01    | 1981 | one              | one              | NE15 8NY  | No Match                             | 4 July 2024      |
#      | TC45   | 04  | 04    | 1994 | four             | four             | PO1 4AX   | No Match                             | 12 July 2024     |
#      | TC46   | 05  | 05    | 1995 | five             | five             | PO1 4AX   | No Match                             | 19 June 2024     |
#      | TC47   | 06  | 06    | 1996 | six              | six              | PO1 4AX   | No Match                             | 18 July 2024     |
#      | TC48   | 07  | 07    | 1997 | seven            | seven            | PO1 4AX   | No Match                             | 15 July 2024     |
#      | TC49   | 19  | 07    | 1991 | stage            | stage            | NE5 2JN   | No Match                             | 20 June 2024     |
#      | TC50   | 02  | 02    | 1991 | ok               | ok               | PO1 4AX   | No Match                             | 1 March 2025     |
#      | TC51   | 01  | 03    | 1990 | Test             | Nam              | NE5 2JN   | No Match                             | 15 July 2024     |
#      | TC52   | 12  | 03    | 1991 | testg            | testg            | PO1 4AX   | No Match                             | 4 April 2025     |
#      | TC53   | 01  | 01    | 1991 | testg            | testg            | PO1 4AX   | No Match                             | 9 July 2024      |
#      | TC54   | 05  | 06    | 1990 | JAYNE            | BADROCK          | NY7 9YU   | Result Prescription Dental Exemption | 31 December 2099 |
#      | TC55   | 05  | 06    | 1990 | JAYNE            | BADROCK          | NY7 9YU   | Result Prescription Dental Exemption | 31 December 2099 |
#      | TC56   | 05  | 06    | 1990 | JAYNE            | BADROCK          | NY7 9YU   | Result Prescription Dental Exemption | 31 December 2099 |
