xlocation = argument0;
ylocation = argument1;
objectKey = argument2;

if(objectKey == 0) //Begin Chess
{
    instance_create(xlocation,ylocation,obj_ChessBoard);
}
else if(objectKey == 1)
{
    instance_create(xlocation,ylocation,obj_ChessKing);
}
else if(objectKey == 2)
{
    instance_create(xlocation,ylocation,obj_ChessQueen);
}
else if(objectKey == 3)
{
    instance_create(xlocation,ylocation,obj_ChessPawn);
}
else if(objectKey == 4)
{
    instance_create(xlocation,ylocation,obj_ChessRook);
}
else if(objectKey == 5)
{
    instance_create(xlocation,ylocation,obj_ChessBishop);
}
else if(objectKey == 6) //End Chess
{
    instance_create(xlocation,ylocation,obj_ChessKnight);
}
else if(objectKey == 7) //Begin Playing Cards
{
    instance_create(xlocation,ylocation,obj_PlayingCardsDeck);
}
else if(objectKey == 8) 
{
    instance_create(xlocation,ylocation,obj_PlayingCardsJoker);
}
else if(objectKey == 9)
{
    instance_create(xlocation,ylocation,obj_PlayingCards2Diamonds);
}
else if(objectKey == 10)
{
    instance_create(xlocation,ylocation,obj_PlayingCards3Diamonds);
}
else if(objectKey == 11)
{
    instance_create(xlocation,ylocation,obj_PlayingCards4Diamonds);
}
else if(objectKey == 12)
{
    instance_create(xlocation,ylocation,obj_PlayingCards5Diamonds);
}
else if(objectKey == 13)
{
    instance_create(xlocation,ylocation,obj_PlayingCards6Diamonds);
}
else if(objectKey == 14)
{
    instance_create(xlocation,ylocation,obj_PlayingCards7Diamonds);
}
else if(objectKey == 15)
{
    instance_create(xlocation,ylocation,obj_PlayingCards8Diamonds);
}
else if(objectKey == 16)
{
    instance_create(xlocation,ylocation,obj_PlayingCards9Diamonds);
}
else if(objectKey == 17)
{
    instance_create(xlocation,ylocation,obj_PlayingCards10Diamonds);
}
else if(objectKey == 18)
{
    instance_create(xlocation,ylocation,obj_PlayingCardsJDiamonds);
}
else if(objectKey == 19)
{
    instance_create(xlocation,ylocation,obj_PlayingCardsQDiamonds);
}
else if(objectKey == 20)
{
    instance_create(xlocation,ylocation,obj_PlayingCardsKDiamonds);
}
else if(objectKey == 21)
{
    instance_create(xlocation,ylocation,obj_PlayingCardsADiamonds);
}
else if(objectKey == 22)
{
    instance_create(xlocation,ylocation,obj_PlayingCards2Clubs);
}
else if(objectKey == 23)
{
    instance_create(xlocation,ylocation,obj_PlayingCards3Clubs);
}
else if(objectKey == 24)
{
    instance_create(xlocation,ylocation,obj_PlayingCards4Clubs);
}
else if(objectKey == 25)
{
    instance_create(xlocation,ylocation,obj_PlayingCards5Clubs);
}
else if(objectKey == 26)
{
    instance_create(xlocation,ylocation,obj_PlayingCards6Clubs);
}
else if(objectKey == 27)
{
    instance_create(xlocation,ylocation,obj_PlayingCards7Clubs);
}
else if(objectKey == 28)
{
    instance_create(xlocation,ylocation,obj_PlayingCards8Clubs);
}
else if(objectKey == 29)
{
    instance_create(xlocation,ylocation,obj_PlayingCards9Clubs);
}
else if(objectKey == 30)
{
    instance_create(xlocation,ylocation,obj_PlayingCards10Clubs);
}
else if(objectKey == 31)
{
    instance_create(xlocation,ylocation,obj_PlayingCardsJClubs);
}
else if(objectKey == 32)
{
    instance_create(xlocation,ylocation,obj_PlayingCardsQClubs);
}
else if(objectKey == 33)
{
    instance_create(xlocation,ylocation,obj_PlayingCardsKClubs);
}
else if(objectKey == 34)
{
    instance_create(xlocation,ylocation,obj_PlayingCardsAClubs);
}
else if(objectKey == 35)
{
    instance_create(xlocation,ylocation,obj_PlayingCards2Hearts);
}
else if(objectKey == 36)
{
    instance_create(xlocation,ylocation,obj_PlayingCards3Hearts);
}
else if(objectKey == 37)
{
    instance_create(xlocation,ylocation,obj_PlayingCards4Hearts);
}
else if(objectKey == 38)
{
    instance_create(xlocation,ylocation,obj_PlayingCards5Hearts);
}
else if(objectKey == 39)
{
    instance_create(xlocation,ylocation,obj_PlayingCards6Hearts);
}
else if(objectKey == 40)
{
    instance_create(xlocation,ylocation,obj_PlayingCards7Hearts);
}
else if(objectKey == 41)
{
    instance_create(xlocation,ylocation,obj_PlayingCards8Hearts);
}
else if(objectKey == 42)
{
    instance_create(xlocation,ylocation,obj_PlayingCards9Hearts);
}
else if(objectKey == 43)
{
    instance_create(xlocation,ylocation,obj_PlayingCards10Hearts);
}
else if(objectKey == 44)
{
    instance_create(xlocation,ylocation,obj_PlayingCardsJHearts);
}
else if(objectKey == 45)
{
    instance_create(xlocation,ylocation,obj_PlayingCardsQHearts);
}
else if(objectKey == 46)
{
    instance_create(xlocation,ylocation,obj_PlayingCardsKHearts);
}
else if(objectKey == 47)
{
    instance_create(xlocation,ylocation,obj_PlayingCardsAHearts);
}
else if(objectKey == 48)
{
    instance_create(xlocation,ylocation,obj_PlayingCards2Spades);
}
else if(objectKey == 49)
{
    instance_create(xlocation,ylocation,obj_PlayingCards3Spades);
}
else if(objectKey == 50)
{
    instance_create(xlocation,ylocation,obj_PlayingCards4Spades);
}
else if(objectKey == 51)
{
    instance_create(xlocation,ylocation,obj_PlayingCards5Spades);
}
else if(objectKey == 52)
{
    instance_create(xlocation,ylocation,obj_PlayingCards6Spades);
}
else if(objectKey == 53)
{
    instance_create(xlocation,ylocation,obj_PlayingCards7Spades);
}
else if(objectKey == 54)
{
    instance_create(xlocation,ylocation,obj_PlayingCards8Spades);
}
else if(objectKey == 55)
{
    instance_create(xlocation,ylocation,obj_PlayingCards9Spades);
}
else if(objectKey == 56)
{
    instance_create(xlocation,ylocation,obj_PlayingCards10Spades);
}
else if(objectKey == 57)
{
    instance_create(xlocation,ylocation,obj_PlayingCardsJSpades);
}
else if(objectKey == 58)
{
    instance_create(xlocation,ylocation,obj_PlayingCardsQSpades);
}
else if(objectKey == 59)
{
    instance_create(xlocation,ylocation,obj_PlayingCardsKSpades);
}
else if(objectKey == 60) //End Playing Cards
{
    instance_create(xlocation,ylocation,obj_PlayingCardsASpades);
}
else if(objectKey == 61) //General Dice
{
    instance_create(xlocation,ylocation,obj_StandardD2);
}
else if(objectKey == 62)
{
    instance_create(xlocation,ylocation,obj_StandardD3);
}
else if(objectKey == 63)
{
    instance_create(xlocation,ylocation,obj_StandardD4);
}
else if(objectKey == 64)
{
    instance_create(xlocation,ylocation,obj_StandardD5);
}
else if(objectKey == 65)
{
    instance_create(xlocation,ylocation,obj_StandardD6);
}
else if(objectKey == 66)
{
    instance_create(xlocation,ylocation,obj_StandardD7);
}
else if(objectKey == 67)
{
    instance_create(xlocation,ylocation,obj_StandardD8);
}
else if(objectKey == 68)
{
    instance_create(xlocation,ylocation,obj_StandardD9);
}
else if(objectKey == 69)
{
    instance_create(xlocation,ylocation,obj_StandardD10);
}
else if(objectKey == 70)
{
    instance_create(xlocation,ylocation,obj_StandardD11);
}
else if(objectKey == 71)
{
    instance_create(xlocation,ylocation,obj_StandardD12);
}
else if(objectKey == 72)
{
    instance_create(xlocation,ylocation,obj_StandardD13);
}
else if(objectKey == 73)
{
    instance_create(xlocation,ylocation,obj_StandardD14);
}
else if(objectKey == 74)
{
    instance_create(xlocation,ylocation,obj_StandardD15);
}
else if(objectKey == 75)
{
    instance_create(xlocation,ylocation,obj_StandardD16);
}
else if(objectKey == 76)
{
    instance_create(xlocation,ylocation,obj_StandardD17);
}
else if(objectKey == 77)
{
    instance_create(xlocation,ylocation,obj_StandardD18);
}
else if(objectKey == 78)
{
    instance_create(xlocation,ylocation,obj_StandardD19);
}
else if(objectKey == 79)
{
    instance_create(xlocation,ylocation,obj_StandardD20);
}
else if(objectKey == 80)
{
    instance_create(xlocation,ylocation,obj_StandardBukkit);
}
else if(objectKey == 81)
{
    instance_create(xlocation,ylocation,obj_StandardScoreChart);
}
else if(objectKey == 82)
{
    instance_create(xlocation,ylocation,obj_CatanEventD6);
}
else if(objectKey == 83)
{
    instance_create(xlocation,ylocation,obj_CatanRedD6);
}
else if(objectKey == 84)
{
    instance_create(xlocation,ylocation,obj_CatanYellowD6);
}
else if(objectKey == 85)
{
    instance_create(xlocation,ylocation,obj_CatanSheepCard);
}
else if(objectKey == 86)
{
    instance_create(xlocation,ylocation,obj_CatanWoodCard);
}
else if(objectKey == 87)
{
    instance_create(xlocation,ylocation,obj_CatanBrickCard);
}
else if(objectKey == 88)
{
    instance_create(xlocation,ylocation,obj_CatanWheatCard);
}
else if(objectKey == 89)
{
    instance_create(xlocation,ylocation,obj_CatanOreCard);
}
else if(objectKey == 90)
{
    instance_create(xlocation,ylocation,obj_CatanClothCard);
}
else if(objectKey == 91)
{
    instance_create(xlocation,ylocation,obj_CatanPaperCard);
}
else if(objectKey == 92)
{
    instance_create(xlocation,ylocation,obj_CatanCoinsCard);
}
else if(objectKey == 93)
{
    instance_create(xlocation,ylocation,obj_SheepTile);
}
else if(objectKey == 94)
{
    instance_create(xlocation,ylocation,obj_WoodTile);
}
else if(objectKey == 95)
{
    instance_create(xlocation,ylocation,obj_BrickTile);
}
else if(objectKey == 96)
{
    instance_create(xlocation,ylocation,obj_WheatTile);
}
else if(objectKey == 97)
{
    instance_create(xlocation,ylocation,obj_OreTile);
}
else if(objectKey == 98)
{
    instance_create(xlocation,ylocation,obj_DesertTile);
}
else if(objectKey == 99)
{
    instance_create(xlocation,ylocation,obj_GoldTile);
}
else if(objectKey == 100)
{
    instance_create(xlocation,ylocation,obj_WaterTile);
}
else if(objectKey == 101)
{
    instance_create(xlocation,ylocation,obj_SwampTile);
}
else if(objectKey == 102)
{
    instance_create(xlocation,ylocation,obj_FishTile);
}
else if(objectKey == 103)
{
    instance_create(xlocation,ylocation,obj_CatanBoard);
}
else if(objectKey == 104)
{
    instance_create(xlocation,ylocation,obj_CatanRoad);
}
else if(objectKey == 105)
{
    instance_create(xlocation,ylocation,obj_CatanSettlement);
}
else if(objectKey == 106)
{
    instance_create(xlocation,ylocation,obj_CatanCity);
}
else if(objectKey == 107)
{
    instance_create(xlocation,ylocation,obj_CatanKnight);
}
else if(objectKey == 108)
{
    instance_create(xlocation,ylocation,obj_CatanShip);
}
else if(objectKey == 109)
{
    instance_create(xlocation,ylocation,obj_CatanThief);
}
else if(objectKey == 110)
{
    instance_create(xlocation,ylocation,obj_CatanPirate);
}
else if(objectKey == 111)
{
    instance_create(xlocation,ylocation,obj_CatanMetropolis);
}
else if(objectKey == 112)
{
    instance_create(xlocation,ylocation,obj_CatanMerchant);
}
else if(objectKey == 113)
{
    instance_create(xlocation,ylocation,obj_CatanNumberChit2);
}
else if(objectKey == 114)
{
    instance_create(xlocation,ylocation,obj_CatanFishChit2);
}
else if(objectKey == 115)
{
    instance_create(xlocation,ylocation,obj_CatanFishD3);
}
else if(objectKey == 116)
{
    instance_create(xlocation,ylocation,obj_CatanWealthiestCard);
}
else if(objectKey == 117)
{
    instance_create(xlocation,ylocation,obj_CatanHarbormasterCard);
}
else if(objectKey == 118)
{
    instance_create(xlocation,ylocation,obj_CatanLongestRoadCard);
}
else if(objectKey == 119)
{
    instance_create(xlocation,ylocation,obj_CatanLargestArmyCard);
}
else if(objectKey == 120)
{
    instance_create(xlocation,ylocation,obj_CatanBarbarianChart);
}
else if(objectKey == 121)
{
    instance_create(xlocation,ylocation,obj_CatanRiverChit);
}
else if(objectKey == 122)
{
    instance_create(xlocation,ylocation,obj_Catan3to1HarborChit);
}
else if(objectKey == 123)
{
    instance_create(xlocation,ylocation,obj_CatanBrickHarborChit);
}
else if(objectKey == 124)
{
    instance_create(xlocation,ylocation,obj_CatanOreHarborChit);
}
else if(objectKey == 125)
{
    instance_create(xlocation,ylocation,obj_CatanSheepHarborChit);
}
else if(objectKey == 126)
{
    instance_create(xlocation,ylocation,obj_CatanWheatHarborChit);
}
else if(objectKey == 127)
{
    instance_create(xlocation,ylocation,obj_CatanWoodHarborChit);
}
else if(objectKey == 128)
{
    instance_create(xlocation,ylocation,obj_CatanKnightCard);
}
else if(objectKey == 129)
{
    instance_create(xlocation,ylocation,obj_CatanRoadBuildingDevelopmentCard);
}
else if(objectKey == 130)
{
    instance_create(xlocation,ylocation,obj_CatanMonopolyCard);
}
else if(objectKey == 131)
{
    instance_create(xlocation,ylocation,obj_CatanYearOfPlentyCard);
}
else if(objectKey == 132)
{
    instance_create(xlocation,ylocation,obj_CatanPalaceCard);
}
else if(objectKey == 133)
{
    instance_create(xlocation,ylocation,obj_CatanMarketCard);
}
else if(objectKey == 134)
{
    instance_create(xlocation,ylocation,obj_CatanChapelCard);
}
else if(objectKey == 135)
{
    instance_create(xlocation,ylocation,obj_CatanLibraryCard);
}
else if(objectKey == 136)
{
    instance_create(xlocation,ylocation,obj_CatanUniversityCard);
}
else if(objectKey == 137)
{
    instance_create(xlocation,ylocation,obj_CatanAlchemistCard);
}
else if(objectKey == 138)
{
    instance_create(xlocation,ylocation,obj_CatanCraneCard);
}
else if(objectKey == 139)
{
    instance_create(xlocation,ylocation,obj_CatanEngineerCard);
}
else if(objectKey == 140)
{
    instance_create(xlocation,ylocation,obj_CatanInventorCard);
}
else if(objectKey == 141)
{
    instance_create(xlocation,ylocation,obj_CatanIrrigationCard);
}
else if(objectKey == 142)
{
    instance_create(xlocation,ylocation,obj_CatanMedicineCard);
}
else if(objectKey == 143)
{
    instance_create(xlocation,ylocation,obj_CatanMiningCard);
}
else if(objectKey == 144)
{
    instance_create(xlocation,ylocation,obj_CatanPrinterCard);
}
else if(objectKey == 145)
{
    instance_create(xlocation,ylocation,obj_CatanRoadBuildingProgressCard);
}
else if(objectKey == 146)
{
    instance_create(xlocation,ylocation,obj_CatanSmithCard);
}
else if(objectKey == 147)
{
    instance_create(xlocation,ylocation,obj_CatanBishopCard);
}
else if(objectKey == 148)
{
    instance_create(xlocation,ylocation,obj_CatanConstitutionCard);
}
else if(objectKey == 149)
{
    instance_create(xlocation,ylocation,obj_CatanDeserterCard);
}
else if(objectKey == 150)
{
    instance_create(xlocation,ylocation,obj_CatanDiplomatCard);
}
else if(objectKey == 151)
{
    instance_create(xlocation,ylocation,obj_CatanIntrigueCard);
}
else if(objectKey == 152)
{
    instance_create(xlocation,ylocation,obj_CatanSaboteurCard);
}
else if(objectKey == 153)
{
    instance_create(xlocation,ylocation,obj_CatanSpyCard);
}
else if(objectKey == 154)
{
    instance_create(xlocation,ylocation,obj_CatanWarlordCard);
}
else if(objectKey == 155)
{
    instance_create(xlocation,ylocation,obj_CatanWeddingCard);
}
else if(objectKey == 156)
{
    instance_create(xlocation,ylocation,obj_CatanCommercialHarborCard);
}
else if(objectKey == 157)
{
    instance_create(xlocation,ylocation,obj_CatanMasterMerchantCard);
}
else if(objectKey == 158)
{
    instance_create(xlocation,ylocation,obj_CatanMerchantCard);
}
else if(objectKey == 159)
{
    instance_create(xlocation,ylocation,obj_CatanMerchantFleetCard);
}
else if(objectKey == 160)
{
    instance_create(xlocation,ylocation,obj_CatanResourceMonopolyCard);
}
else if(objectKey == 161)
{
    instance_create(xlocation,ylocation,obj_CatanTradeMonopolyCard);
}
else if(objectKey == 162)
{
    instance_create(xlocation,ylocation,obj_CatanVictoryCard);
}
else if(objectKey == 163)
{
    instance_create(xlocation,ylocation,obj_Catan1FishCard);
}
else if(objectKey == 164)
{
    instance_create(xlocation,ylocation,obj_Catan2FishCard);
}
else if(objectKey == 165)
{
    instance_create(xlocation,ylocation,obj_Catan3FishCard);
}
else if(objectKey == 166)
{
    instance_create(xlocation,ylocation,obj_CatanVictoryDeck);
}
else if(objectKey == 167)
{
    instance_create(xlocation,ylocation,obj_CatanDevelopmentDeck);
}
else if(objectKey == 168)
{
    instance_create(xlocation,ylocation,obj_CatanBuildingProgressDeck);
}
else if(objectKey == 169)
{
    instance_create(xlocation,ylocation,obj_CatanPoliticsProgressDeck);
}
else if(objectKey == 170)
{
    instance_create(xlocation,ylocation,obj_CatanTradeProgressDeck);
}
else if(objectKey == 171)
{
    instance_create(xlocation,ylocation,obj_CatanBrickDeck);
}
else if(objectKey == 172)
{
    instance_create(xlocation,ylocation,obj_CatanOreDeck);
}
else if(objectKey == 173)
{
    instance_create(xlocation,ylocation,obj_CatanSheepDeck);
}
else if(objectKey == 174)
{
    instance_create(xlocation,ylocation,obj_CatanWheatDeck);
}
else if(objectKey == 175)
{
    instance_create(xlocation,ylocation,obj_CatanWoodDeck);
}
else if(objectKey == 176)
{
    instance_create(xlocation,ylocation,obj_CatanClothDeck);
}
else if(objectKey == 177)
{
    instance_create(xlocation,ylocation,obj_CatanCoinsDeck);
}
else if(objectKey == 178)
{
    instance_create(xlocation,ylocation,obj_CatanPaperDeck);
}
else if(objectKey == 179)
{
    instance_create(xlocation,ylocation,obj_CatanFishDeck);
}
else if(objectKey == 180)
{
    instance_create(xlocation,ylocation,obj_CatanTileStack);
}
else if(objectKey == 181)
{
    instance_create(xlocation,ylocation,obj_CatanNumberChitStack);
}
else if(objectKey == 182)
{
    instance_create(xlocation,ylocation,obj_CatanFishChitStack);
}
else if(objectKey == 183)
{
    instance_create(xlocation,ylocation,obj_CatanHarborChitStack);
}
else if(objectKey == 184)
{
    instance_create(xlocation,ylocation,obj_CatanFishTileStack);
}
else if(objectKey == 185)
{
    instance_create(xlocation,ylocation,obj_CatanScoreChart);
}
else if(objectKey == 186)
{
    instance_create(xlocation,ylocation,obj_CatanNumberChit3);
}
else if(objectKey == 187)
{
    instance_create(xlocation,ylocation,obj_CatanNumberChit4);
}
else if(objectKey == 188)
{
    instance_create(xlocation,ylocation,obj_CatanNumberChit5);
}
else if(objectKey == 189)
{
    instance_create(xlocation,ylocation,obj_CatanNumberChit6);
}
else if(objectKey == 190)
{
    instance_create(xlocation,ylocation,obj_CatanNumberChit7);
}
else if(objectKey == 191)
{
    instance_create(xlocation,ylocation,obj_CatanNumberChit8);
}
else if(objectKey == 192)
{
    instance_create(xlocation,ylocation,obj_CatanNumberChit9);
}
else if(objectKey == 193)
{
    instance_create(xlocation,ylocation,obj_CatanNumberChit10);
}
else if(objectKey == 194)
{
    instance_create(xlocation,ylocation,obj_CatanNumberChit11);
}
else if(objectKey == 195)
{
    instance_create(xlocation,ylocation,obj_CatanNumberChit12);
}
else if(objectKey == 196)
{
    instance_create(xlocation,ylocation,obj_CatanFishChit3);
}
else if(objectKey == 197)
{
    instance_create(xlocation,ylocation,obj_CatanFishChit4);
}
else if(objectKey == 198)
{
    instance_create(xlocation,ylocation,obj_CatanFishChit5);
}
else if(objectKey == 199)
{
    instance_create(xlocation,ylocation,obj_CatanFishChit6);
}
else if(objectKey == 200)
{
    instance_create(xlocation,ylocation,obj_CatanFishChit7);
}
else if(objectKey == 201)
{
    instance_create(xlocation,ylocation,obj_CatanFishChit8);
}
else if(objectKey == 202)
{
    instance_create(xlocation,ylocation,obj_CatanFishChit9);
}
else if(objectKey == 203)
{
    instance_create(xlocation,ylocation,obj_CatanFishChit10);
}
else if(objectKey == 204)
{
    instance_create(xlocation,ylocation,obj_CatanFishChit11);
}
else if(objectKey == 205)
{
    instance_create(xlocation,ylocation,obj_CatanFishChit12);
}
else if(objectKey == 206)
{
    instance_create(xlocation,ylocation,obj_CatanFishChit410);
}
else if(objectKey == 207)
{
    instance_create(xlocation,ylocation,obj_CatanFishChit231112);
}
//Game Index 4: Monster Office Workplace: 208-572
else if(objectKey == 208)
{
    instance_create(xlocation,ylocation,obj_MOWBoardSmall);
}
else if(objectKey == 209)
{
    instance_create(xlocation,ylocation,obj_MOWBoardMediumSmall);
}
else if(objectKey == 210)
{
    instance_create(xlocation,ylocation,obj_MOWBoardMedium);
}
else if(objectKey == 211)
{
    instance_create(xlocation,ylocation,obj_MOWBoardMediumLarge);
}
else if(objectKey == 212)
{
    instance_create(xlocation,ylocation,obj_MOWBoardLarge);
}
else if(objectKey == 213)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerBGO);
}
else if(objectKey == 214)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerBGP);
}
else if(objectKey == 215)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerBGR);
}
else if(objectKey == 216)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerBGY);
}
else if(objectKey == 217)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerBOP);
}
else if(objectKey == 218)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerBOR);
}
else if(objectKey == 219)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerBOY);
}
else if(objectKey == 220)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerBPR);
}
else if(objectKey == 221)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerBPY);
}
else if(objectKey == 222)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerBRY);
}
else if(objectKey == 223)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerGOP);
}
else if(objectKey == 224)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerGOR);
}
else if(objectKey == 225)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerGOY);
}
else if(objectKey == 226)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerGPR);
}
else if(objectKey == 227)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerGPY);
}
else if(objectKey == 228)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerGRY);
}
else if(objectKey == 229)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerOPR);
}
else if(objectKey == 230)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerOPY);
}
else if(objectKey == 231)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerORY);
}
else if(objectKey == 232)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCornerPRY);
}
else if(objectKey == 233)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCrossBGOPR);
}
else if(objectKey == 234)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCrossBGOPY);
}
else if(objectKey == 235)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCrossBGORY);
}
else if(objectKey == 236)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCrossBGPRY);
}
else if(objectKey == 237)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCrossBOPRY);
}
else if(objectKey == 238)
{
    instance_create(xlocation,ylocation,obj_MOWProjectCrossGOPRY);
}
else if(objectKey == 239)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegLeftBGOP);
}
else if(objectKey == 240)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegLeftBGOR);
}
else if(objectKey == 241)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegLeftBGOY);
}
else if(objectKey == 242)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegLeftBGPR);
}
else if(objectKey == 243)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegLeftBGPY);
}
else if(objectKey == 244)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegLeftBGRY);
}
else if(objectKey == 245)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegLeftBOPR);
}
else if(objectKey == 246)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegLeftBOPY);
}
else if(objectKey == 247)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegLeftBORY);
}
else if(objectKey == 248)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegLeftBPRY);
}
else if(objectKey == 249)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegLeftGOPR);
}
else if(objectKey == 250)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegLeftGOPY);
}
else if(objectKey == 251)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegLeftGORY);
}
else if(objectKey == 252)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegLeftGPRY);
}
else if(objectKey == 253)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegLeftOPRY);
}
else if(objectKey == 254)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegRightBGOP);
}
else if(objectKey == 255)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegRightBGOR);
}
else if(objectKey == 256)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegRightBGOY);
}
else if(objectKey == 257)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegRightBGPR);
}
else if(objectKey == 258)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegRightBGPY);
}
else if(objectKey == 259)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegRightBGRY);
}
else if(objectKey == 260)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegRightBOPR);
}
else if(objectKey == 261)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegRightBOPY);
}
else if(objectKey == 262)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegRightBORY);
}
else if(objectKey == 263)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegRightBPRY);
}
else if(objectKey == 264)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegRightGOPR);
}
else if(objectKey == 265)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegRightGOPY);
}
else if(objectKey == 266)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegRightGORY);
}
else if(objectKey == 267)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegRightGPRY);
}
else if(objectKey == 268)
{
    instance_create(xlocation,ylocation,obj_MOWProjectLegRightOPRY);
}
else if(objectKey == 269)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZagBGOP);
}
else if(objectKey == 270)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZagBGOR);
}
else if(objectKey == 271)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZagBGOY);
}
else if(objectKey == 272)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZagBGPR);
}
else if(objectKey == 273)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZagBGPY);
}
else if(objectKey == 274)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZagBGRY);
}
else if(objectKey == 275)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZagBOPR);
}
else if(objectKey == 276)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZagBOPY);
}
else if(objectKey == 277)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZagBORY);
}
else if(objectKey == 278)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZagBPRY);
}
else if(objectKey == 279)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZagGOPR);
}
else if(objectKey == 280)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZagGOPY);
}
else if(objectKey == 281)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZagGORY);
}
else if(objectKey == 282)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZagGPRY);
}
else if(objectKey == 283)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZagOPRY);
}
else if(objectKey == 284)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZigBGOP);
}
else if(objectKey == 285)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZigBGOR);
}
else if(objectKey == 286)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZigBGOY);
}
else if(objectKey == 287)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZigBGPR);
}
else if(objectKey == 288)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZigBGPY);
}
else if(objectKey == 289)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZigBGRY);
}
else if(objectKey == 290)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZigBOPR);
}
else if(objectKey == 291)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZigBOPY);
}
else if(objectKey == 292)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZigBORY);
}
else if(objectKey == 293)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZigBPRY);
}
else if(objectKey == 294)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZigGOPR);
}
else if(objectKey == 295)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZigGOPY);
}
else if(objectKey == 296)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZigGORY);
}
else if(objectKey == 297)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZigGPRY);
}
else if(objectKey == 298)
{
    instance_create(xlocation,ylocation,obj_MOWProjectZigOPRY);
}
else if(objectKey == 299)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSingleB);
}
else if(objectKey == 300)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSingleG);
}
else if(objectKey == 301)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSingleO);
}
else if(objectKey == 302)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSingleP);
}
else if(objectKey == 303)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSingleR);
}
else if(objectKey == 304)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSingleY);
}
else if(objectKey == 305)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x2BG);
}
else if(objectKey == 306)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x2BO);
}
else if(objectKey == 307)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x2BP);
}
else if(objectKey == 308)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x2BR);
}
else if(objectKey == 309)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x2BY);
}
else if(objectKey == 310)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x2GO);
}
else if(objectKey == 311)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x2GP);
}
else if(objectKey == 312)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x2GR);
}
else if(objectKey == 313)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x2GY);
}
else if(objectKey == 314)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x2OP);
}
else if(objectKey == 315)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x2OR);
}
else if(objectKey == 316)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x2OY);
}
else if(objectKey == 317)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x2PR);
}
else if(objectKey == 318)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x2PY);
}
else if(objectKey == 319)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x2RY);
}
else if(objectKey == 320)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3BGO);
}
else if(objectKey == 321)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3BGP);
}
else if(objectKey == 322)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3BGR);
}
else if(objectKey == 323)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3BGY);
}
else if(objectKey == 324)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3BOP);
}
else if(objectKey == 325)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3BOR);
}
else if(objectKey == 326)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3BOY);
}
else if(objectKey == 327)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3BPR);
}
else if(objectKey == 328)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3BPY);
}
else if(objectKey == 329)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3BRY);
}
else if(objectKey == 330)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3GOP);
}
else if(objectKey == 331)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3GOR);
}
else if(objectKey == 332)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3GOY);
}
else if(objectKey == 333)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3GPR);
}
else if(objectKey == 334)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3GPY);
}
else if(objectKey == 335)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3GRY);
}
else if(objectKey == 336)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3OPR);
}
else if(objectKey == 337)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3OPY);
}
else if(objectKey == 338)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3ORY);
}
else if(objectKey == 339)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x3PRY);
}
else if(objectKey == 340)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x4BGOP);
}
else if(objectKey == 341)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x4BGOR);
}
else if(objectKey == 342)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x4BGOY);
}
else if(objectKey == 343)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x4BGPR);
}
else if(objectKey == 344)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x4BGPY);
}
else if(objectKey == 345)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x4BGRY);
}
else if(objectKey == 346)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x4BOPR);
}
else if(objectKey == 347)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x4BOPY);
}
else if(objectKey == 348)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x4BORY);
}
else if(objectKey == 349)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x4BPRY);
}
else if(objectKey == 350)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x4GOPR);
}
else if(objectKey == 351)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x4GOPY);
}
else if(objectKey == 352)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x4GORY);
}
else if(objectKey == 353)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x4GPRY);
}
else if(objectKey == 354)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x4OPRY);
}
else if(objectKey == 355)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x5BGOPR);
}
else if(objectKey == 356)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x5BGOPY);
}
else if(objectKey == 357)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x5BGORY);
}
else if(objectKey == 358)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x5BGPRY);
}
else if(objectKey == 359)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x5BGOPY);
}
else if(objectKey == 360)
{
    instance_create(xlocation,ylocation,obj_MOWProject1x5BGORY);
}
else if(objectKey == 361)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSquareBGOP);
}
else if(objectKey == 362)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSquareBGOR);
}
else if(objectKey == 363)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSquareBGOY);
}
else if(objectKey == 364)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSquareBGPR);
}
else if(objectKey == 365)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSquareBGPY);
}
else if(objectKey == 366)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSquareBGRY);
}
else if(objectKey == 367)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSquareBOPR);
}
else if(objectKey == 368)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSquareBOPY);
}
else if(objectKey == 369)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSquareBORY);
}
else if(objectKey == 370)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSquareBPRY);
}
else if(objectKey == 371)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSquareGOPR);
}
else if(objectKey == 372)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSquareGOPY);
}
else if(objectKey == 373)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSquareGORY);
}
else if(objectKey == 374)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSquareGPRY);
}
else if(objectKey == 375)
{
    instance_create(xlocation,ylocation,obj_MOWProjectSquareOPRY);
}
else if(objectKey == 376)
{
    instance_create(xlocation,ylocation,obj_MOWProjectRectangle2x3);
}
else if(objectKey == 377)
{
    instance_create(xlocation,ylocation,obj_MOWBlue1);
}
else if(objectKey == 378)
{
    instance_create(xlocation,ylocation,obj_MOWBlue2);
}
else if(objectKey == 379)
{
    instance_create(xlocation,ylocation,obj_MOWBlue3);
}
else if(objectKey == 380)
{
    instance_create(xlocation,ylocation,obj_MOWBlue4);
}
else if(objectKey == 381)
{
    instance_create(xlocation,ylocation,obj_MOWBlue5);
}
else if(objectKey == 382)
{
    instance_create(xlocation,ylocation,obj_MOWGreen1);
}
else if(objectKey == 383)
{
    instance_create(xlocation,ylocation,obj_MOWGreen2);
}
else if(objectKey == 384)
{
    instance_create(xlocation,ylocation,obj_MOWGreen3);
}
else if(objectKey == 385)
{
    instance_create(xlocation,ylocation,obj_MOWGreen4);
}
else if(objectKey == 386)
{
    instance_create(xlocation,ylocation,obj_MOWGreen5);
}
else if(objectKey == 387)
{
    instance_create(xlocation,ylocation,obj_MOWOrange1);
}
else if(objectKey == 388)
{
    instance_create(xlocation,ylocation,obj_MOWOrange2);
}
else if(objectKey == 389)
{
    instance_create(xlocation,ylocation,obj_MOWOrange3);
}
else if(objectKey == 390)
{
    instance_create(xlocation,ylocation,obj_MOWOrange4);
}
else if(objectKey == 391)
{
    instance_create(xlocation,ylocation,obj_MOWOrange5);
}
else if(objectKey == 392)
{
    instance_create(xlocation,ylocation,obj_MOWPurple1);
}
else if(objectKey == 393)
{
    instance_create(xlocation,ylocation,obj_MOWPurple2);
}
else if(objectKey == 394)
{
    instance_create(xlocation,ylocation,obj_MOWPurple3);
}
else if(objectKey == 395)
{
    instance_create(xlocation,ylocation,obj_MOWPurple4);
}
else if(objectKey == 396)
{
    instance_create(xlocation,ylocation,obj_MOWPurple5);
}
else if(objectKey == 397)
{
    instance_create(xlocation,ylocation,obj_MOWRed1);
}
else if(objectKey == 398)
{
    instance_create(xlocation,ylocation,obj_MOWRed2);
}
else if(objectKey == 399)
{
    instance_create(xlocation,ylocation,obj_MOWRed3);
}
else if(objectKey == 400)
{
    instance_create(xlocation,ylocation,obj_MOWRed4);
}
else if(objectKey == 401)
{
    instance_create(xlocation,ylocation,obj_MOWRed5);
}
else if(objectKey == 402)
{
    instance_create(xlocation,ylocation,obj_MOWYellow1);
}
else if(objectKey == 403)
{
    instance_create(xlocation,ylocation,obj_MOWYellow2);
}
else if(objectKey == 404)
{
    instance_create(xlocation,ylocation,obj_MOWYellow3);
}
else if(objectKey == 405)
{
    instance_create(xlocation,ylocation,obj_MOWYellow4);
}
else if(objectKey == 406)
{
    instance_create(xlocation,ylocation,obj_MOWYellow5);
}
else if(objectKey == 407)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerBGO);
}
else if(objectKey == 408)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerBGP);
}
else if(objectKey == 409)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerBGR);
}
else if(objectKey == 410)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerBGY);
}
else if(objectKey == 411)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerBOP);
}
else if(objectKey == 412)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerBOR);
}
else if(objectKey == 413)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerBOY);
}
else if(objectKey == 414)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerBPR);
}
else if(objectKey == 415)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerBPY);
}
else if(objectKey == 416)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerBRY);
}
else if(objectKey == 417)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerGOP);
}
else if(objectKey == 418)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerGOR);
}
else if(objectKey == 419)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerGOY);
}
else if(objectKey == 420)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerGPR);
}
else if(objectKey == 421)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerGPY);
}
else if(objectKey == 422)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerGRY);
}
else if(objectKey == 423)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerOPR);
}
else if(objectKey == 424)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerOPY);
}
else if(objectKey == 425)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerORY);
}
else if(objectKey == 426)
{
    instance_create(xlocation,ylocation,obj_MOWTileCornerPRY);
}
else if(objectKey == 427)
{
    instance_create(xlocation,ylocation,obj_MOWTileCrossBGOPR);
}
else if(objectKey == 428)
{
    instance_create(xlocation,ylocation,obj_MOWTileCrossBGOPY);
}
else if(objectKey == 429)
{
    instance_create(xlocation,ylocation,obj_MOWTileCrossBGORY);
}
else if(objectKey == 430)
{
    instance_create(xlocation,ylocation,obj_MOWTileCrossBGPRY);
}
else if(objectKey == 431)
{
    instance_create(xlocation,ylocation,obj_MOWTileCrossBOPRY);
}
else if(objectKey == 432)
{
    instance_create(xlocation,ylocation,obj_MOWTileCrossGOPRY);
}
else if(objectKey == 433)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegLeftBGOP);
}
else if(objectKey == 434)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegLeftBGOR);
}
else if(objectKey == 435)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegLeftBGOY);
}
else if(objectKey == 436)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegLeftBGPR);
}
else if(objectKey == 437)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegLeftBGPY);
}
else if(objectKey == 438)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegLeftBGRY);
}
else if(objectKey == 439)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegLeftBOPR);
}
else if(objectKey == 440)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegLeftBOPY);
}
else if(objectKey == 441)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegLeftBORY);
}
else if(objectKey == 442)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegLeftBPRY);
}
else if(objectKey == 443)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegLeftGOPR);
}
else if(objectKey == 444)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegLeftGOPY);
}
else if(objectKey == 445)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegLeftGORY);
}
else if(objectKey == 446)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegLeftGPRY);
}
else if(objectKey == 447)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegLeftOPRY);
}
else if(objectKey == 448)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegRightBGOP);
}
else if(objectKey == 449)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegRightBGOR);
}
else if(objectKey == 450)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegRightBGOY);
}
else if(objectKey == 451)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegRightBGPR);
}
else if(objectKey == 452)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegRightBGPY);
}
else if(objectKey == 453)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegRightBGRY);
}
else if(objectKey == 454)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegRightBOPR);
}
else if(objectKey == 455)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegRightBOPY);
}
else if(objectKey == 456)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegRightBORY);
}
else if(objectKey == 457)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegRightBPRY);
}
else if(objectKey == 458)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegRightGOPR);
}
else if(objectKey == 459)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegRightGOPY);
}
else if(objectKey == 460)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegRightGORY);
}
else if(objectKey == 461)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegRightGPRY);
}
else if(objectKey == 462)
{
    instance_create(xlocation,ylocation,obj_MOWTileLegRightOPRY);
}
else if(objectKey == 463)
{
    instance_create(xlocation,ylocation,obj_MOWTileZagBGOP);
}
else if(objectKey == 464)
{
    instance_create(xlocation,ylocation,obj_MOWTileZagBGOR);
}
else if(objectKey == 465)
{
    instance_create(xlocation,ylocation,obj_MOWTileZagBGOY);
}
else if(objectKey == 466)
{
    instance_create(xlocation,ylocation,obj_MOWTileZagBGPR);
}
else if(objectKey == 467)
{
    instance_create(xlocation,ylocation,obj_MOWTileZagBGPY);
}
else if(objectKey == 468)
{
    instance_create(xlocation,ylocation,obj_MOWTileZagBGRY);
}
else if(objectKey == 469)
{
    instance_create(xlocation,ylocation,obj_MOWTileZagBOPR);
}
else if(objectKey == 470)
{
    instance_create(xlocation,ylocation,obj_MOWTileZagBOPY);
}
else if(objectKey == 471)
{
    instance_create(xlocation,ylocation,obj_MOWTileZagBORY);
}
else if(objectKey == 472)
{
    instance_create(xlocation,ylocation,obj_MOWTileZagBPRY);
}
else if(objectKey == 473)
{
    instance_create(xlocation,ylocation,obj_MOWTileZagGOPR);
}
else if(objectKey == 474)
{
    instance_create(xlocation,ylocation,obj_MOWTileZagGOPY);
}
else if(objectKey == 475)
{
    instance_create(xlocation,ylocation,obj_MOWTileZagGORY);
}
else if(objectKey == 476)
{
    instance_create(xlocation,ylocation,obj_MOWTileZagGPRY);
}
else if(objectKey == 477)
{
    instance_create(xlocation,ylocation,obj_MOWTileZagOPRY);
}
else if(objectKey == 478)
{
    instance_create(xlocation,ylocation,obj_MOWTileZigBGOP);
}
else if(objectKey == 479)
{
    instance_create(xlocation,ylocation,obj_MOWTileZigBGOR);
}
else if(objectKey == 480)
{
    instance_create(xlocation,ylocation,obj_MOWTileZigBGOY);
}
else if(objectKey == 481)
{
    instance_create(xlocation,ylocation,obj_MOWTileZigBGPR);
}
else if(objectKey == 482)
{
    instance_create(xlocation,ylocation,obj_MOWTileZigBGPY);
}
else if(objectKey == 483)
{
    instance_create(xlocation,ylocation,obj_MOWTileZigBGRY);
}
else if(objectKey == 484)
{
    instance_create(xlocation,ylocation,obj_MOWTileZigBOPR);
}
else if(objectKey == 485)
{
    instance_create(xlocation,ylocation,obj_MOWTileZigBOPY);
}
else if(objectKey == 486)
{
    instance_create(xlocation,ylocation,obj_MOWTileZigBORY);
}
else if(objectKey == 487)
{
    instance_create(xlocation,ylocation,obj_MOWTileZigBPRY);
}
else if(objectKey == 488)
{
    instance_create(xlocation,ylocation,obj_MOWTileZigGOPR);
}
else if(objectKey == 489)
{
    instance_create(xlocation,ylocation,obj_MOWTileZigGOPY);
}
else if(objectKey == 490)
{
    instance_create(xlocation,ylocation,obj_MOWTileZigGORY);
}
else if(objectKey == 491)
{
    instance_create(xlocation,ylocation,obj_MOWTileZigGPRY);
}
else if(objectKey == 492)
{
    instance_create(xlocation,ylocation,obj_MOWTileZigOPRY);
}
else if(objectKey == 493)
{
    instance_create(xlocation,ylocation,obj_MOWTileSingleB);
}
else if(objectKey == 494)
{
    instance_create(xlocation,ylocation,obj_MOWTileSingleG);
}
else if(objectKey == 495)
{
    instance_create(xlocation,ylocation,obj_MOWTileSingleO);
}
else if(objectKey == 496)
{
    instance_create(xlocation,ylocation,obj_MOWTileSingleP);
}
else if(objectKey == 497)
{
    instance_create(xlocation,ylocation,obj_MOWTileSingleR);
}
else if(objectKey == 498)
{
    instance_create(xlocation,ylocation,obj_MOWTileSingleY);
}
else if(objectKey == 499)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x2BG);
}
else if(objectKey == 500)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x2BO);
}
else if(objectKey == 501)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x2BP);
}
else if(objectKey == 502)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x2BR);
}
else if(objectKey == 503)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x2BY);
}
else if(objectKey == 504)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x2GO);
}
else if(objectKey == 505)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x2GP);
}
else if(objectKey == 506)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x2GR);
}
else if(objectKey == 507)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x2GY);
}
else if(objectKey == 508)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x2OP);
}
else if(objectKey == 509)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x2OR);
}
else if(objectKey == 510)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x2OY);
}
else if(objectKey == 511)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x2PR);
}
else if(objectKey == 512)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x2PY);
}
else if(objectKey == 513)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x2RY);
}
else if(objectKey == 514)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3BGO);
}
else if(objectKey == 515)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3BGP);
}
else if(objectKey == 516)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3BGR);
}
else if(objectKey == 517)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3BGY);
}
else if(objectKey == 518)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3BOP);
}
else if(objectKey == 519)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3BOR);
}
else if(objectKey == 520)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3BOY);
}
else if(objectKey == 521)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3BPR);
}
else if(objectKey == 522)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3BPY);
}
else if(objectKey == 523)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3BRY);
}
else if(objectKey == 524)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3GOP);
}
else if(objectKey == 525)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3GOR);
}
else if(objectKey == 526)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3GOY);
}
else if(objectKey == 527)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3GPR);
}
else if(objectKey == 528)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3GPY);
}
else if(objectKey == 529)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3GRY);
}
else if(objectKey == 530)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3OPR);
}
else if(objectKey == 531)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3OPY);
}
else if(objectKey == 532)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3ORY);
}
else if(objectKey == 533)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x3PRY);
}
else if(objectKey == 534)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x4BGOP);
}
else if(objectKey == 535)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x4BGOR);
}
else if(objectKey == 536)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x4BGOY);
}
else if(objectKey == 537)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x4BGPR);
}
else if(objectKey == 538)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x4BGPY);
}
else if(objectKey == 539)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x4BGRY);
}
else if(objectKey == 540)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x4BOPR);
}
else if(objectKey == 541)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x4BOPY);
}
else if(objectKey == 542)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x4BORY);
}
else if(objectKey == 543)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x4BPRY);
}
else if(objectKey == 544)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x4GOPR);
}
else if(objectKey == 545)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x4GOPY);
}
else if(objectKey == 546)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x4GORY);
}
else if(objectKey == 547)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x4GPRY);
}
else if(objectKey == 548)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x4OPRY);
}
else if(objectKey == 549)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x5BGOPY);
}
else if(objectKey == 550)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x5BGOPR);
}
else if(objectKey == 551)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x5BGORY);
}
else if(objectKey == 552)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x5BGPRY);
}
else if(objectKey == 553)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x5BOPRY);
}
else if(objectKey == 554)
{
    instance_create(xlocation,ylocation,obj_MOWTile1x5GOPRY);
}
else if(objectKey == 555)
{
    instance_create(xlocation,ylocation,obj_MOWTileSquareBGOP);
}
else if(objectKey == 556)
{
    instance_create(xlocation,ylocation,obj_MOWTileSquareBGOR);
}
else if(objectKey == 557)
{
    instance_create(xlocation,ylocation,obj_MOWTileSquareBGOY);
}
else if(objectKey == 558)
{
    instance_create(xlocation,ylocation,obj_MOWTileSquareBGPR);
}
else if(objectKey == 559)
{
    instance_create(xlocation,ylocation,obj_MOWTileSquareBGPY);
}
else if(objectKey == 560)
{
    instance_create(xlocation,ylocation,obj_MOWTileSquareBGRY);
}
else if(objectKey == 561)
{
    instance_create(xlocation,ylocation,obj_MOWTileSquareBOPR);
}
else if(objectKey == 562)
{
    instance_create(xlocation,ylocation,obj_MOWTileSquareBOPY);
}
else if(objectKey == 563)
{
    instance_create(xlocation,ylocation,obj_MOWTileSquareBORY);
}
else if(objectKey == 564)
{
    instance_create(xlocation,ylocation,obj_MOWTileSquareBPRY);
}
else if(objectKey == 565)
{
    instance_create(xlocation,ylocation,obj_MOWTileSquareGOPR);
}
else if(objectKey == 566)
{
    instance_create(xlocation,ylocation,obj_MOWTileSquareGOPY);
}
else if(objectKey == 567)
{
    instance_create(xlocation,ylocation,obj_MOWTileSquareGORY);
}
else if(objectKey == 568)
{
    instance_create(xlocation,ylocation,obj_MOWTileSquareGPRY);
}
else if(objectKey == 569)
{
    instance_create(xlocation,ylocation,obj_MOWTileSquareOPRY);
}
else if(objectKey == 570)
{
    instance_create(xlocation,ylocation,obj_MOWTile2x3);
}
else if(objectKey == 571)
{
    instance_create(xlocation,ylocation,obj_MOWProjectDeck);
}
else if(objectKey == 572)
{
    instance_create(xlocation,ylocation,obj_MOWResourceDeck);
}
//Game Index 5: Nine Card: 573-694
else if(objectKey == 573)
{
    instance_create(xlocation,ylocation,obj_NineCardBattleGrid);
}
else if(objectKey == 574)
{
    instance_create(xlocation,ylocation,obj_NineCard0_1);
}
else if(objectKey == 575)
{
    instance_create(xlocation,ylocation,obj_NineCard0_2);
}
else if(objectKey == 576)
{
    instance_create(xlocation,ylocation,obj_NineCard0_3);
}
else if(objectKey == 577)
{
    instance_create(xlocation,ylocation,obj_NineCard0_4);
}
else if(objectKey == 578)
{
    instance_create(xlocation,ylocation,obj_NineCard0_5);
}
else if(objectKey == 579)
{
    instance_create(xlocation,ylocation,obj_NineCard0_6);
}
else if(objectKey == 580)
{
    instance_create(xlocation,ylocation,obj_NineCard0_7);
}
else if(objectKey == 581)
{
    instance_create(xlocation,ylocation,obj_NineCard0_8);
}
else if(objectKey == 582)
{
    instance_create(xlocation,ylocation,obj_NineCard0_9);
}
else if(objectKey == 583)
{
    instance_create(xlocation,ylocation,obj_NineCard0_10);
}
else if(objectKey == 584)
{
    instance_create(xlocation,ylocation,obj_NineCard1_0);
}
else if(objectKey == 585)
{
    instance_create(xlocation,ylocation,obj_NineCard1_1);
}
else if(objectKey == 586)
{
    instance_create(xlocation,ylocation,obj_NineCard1_2);
}
else if(objectKey == 587)
{
    instance_create(xlocation,ylocation,obj_NineCard1_3);
}
else if(objectKey == 588)
{
    instance_create(xlocation,ylocation,obj_NineCard1_4);
}
else if(objectKey == 589)
{
    instance_create(xlocation,ylocation,obj_NineCard1_5);
}
else if(objectKey == 590)
{
    instance_create(xlocation,ylocation,obj_NineCard1_6);
}
else if(objectKey == 591)
{
    instance_create(xlocation,ylocation,obj_NineCard1_7);
}
else if(objectKey == 592)
{
    instance_create(xlocation,ylocation,obj_NineCard1_8);
}
else if(objectKey == 593)
{
    instance_create(xlocation,ylocation,obj_NineCard1_9);
}
else if(objectKey == 594)
{
    instance_create(xlocation,ylocation,obj_NineCard1_10);
}
else if(objectKey == 595)
{
    instance_create(xlocation,ylocation,obj_NineCard2_0);
}
else if(objectKey == 596)
{
    instance_create(xlocation,ylocation,obj_NineCard2_1);
}
else if(objectKey == 597)
{
    instance_create(xlocation,ylocation,obj_NineCard2_2);
}
else if(objectKey == 598)
{
    instance_create(xlocation,ylocation,obj_NineCard2_3);
}
else if(objectKey == 599)
{
    instance_create(xlocation,ylocation,obj_NineCard2_4);
}
else if(objectKey == 600)
{
    instance_create(xlocation,ylocation,obj_NineCard2_5);
}
else if(objectKey == 601)
{
    instance_create(xlocation,ylocation,obj_NineCard2_6);
}
else if(objectKey == 602)
{
    instance_create(xlocation,ylocation,obj_NineCard2_7);
}
else if(objectKey == 603)
{
    instance_create(xlocation,ylocation,obj_NineCard2_8);
}
else if(objectKey == 604)
{
    instance_create(xlocation,ylocation,obj_NineCard2_9);
}
else if(objectKey == 605)
{
    instance_create(xlocation,ylocation,obj_NineCard2_10);
}
else if(objectKey == 606)
{
    instance_create(xlocation,ylocation,obj_NineCard3_0);
}
else if(objectKey == 607)
{
    instance_create(xlocation,ylocation,obj_NineCard3_1);
}
else if(objectKey == 608)
{
    instance_create(xlocation,ylocation,obj_NineCard3_2);
}
else if(objectKey == 609)
{
    instance_create(xlocation,ylocation,obj_NineCard3_3);
}
else if(objectKey == 610)
{
    instance_create(xlocation,ylocation,obj_NineCard3_4);
}
else if(objectKey == 611)
{
    instance_create(xlocation,ylocation,obj_NineCard3_5);
}
else if(objectKey == 612)
{
    instance_create(xlocation,ylocation,obj_NineCard3_6);
}
else if(objectKey == 613)
{
    instance_create(xlocation,ylocation,obj_NineCard3_7);
}
else if(objectKey == 614)
{
    instance_create(xlocation,ylocation,obj_NineCard3_8);
}
else if(objectKey == 615)
{
    instance_create(xlocation,ylocation,obj_NineCard3_9);
}
else if(objectKey == 616)
{
    instance_create(xlocation,ylocation,obj_NineCard3_10);
}
else if(objectKey == 617)
{
    instance_create(xlocation,ylocation,obj_NineCard4_0);
}
else if(objectKey == 618)
{
    instance_create(xlocation,ylocation,obj_NineCard4_1);
}
else if(objectKey == 619)
{
    instance_create(xlocation,ylocation,obj_NineCard4_2);
}
else if(objectKey == 620)
{
    instance_create(xlocation,ylocation,obj_NineCard4_3);
}
else if(objectKey == 621)
{
    instance_create(xlocation,ylocation,obj_NineCard4_4);
}
else if(objectKey == 622)
{
    instance_create(xlocation,ylocation,obj_NineCard4_5);
}
else if(objectKey == 623)
{
    instance_create(xlocation,ylocation,obj_NineCard4_6);
}
else if(objectKey == 624)
{
    instance_create(xlocation,ylocation,obj_NineCard4_7);
}
else if(objectKey == 625)
{
    instance_create(xlocation,ylocation,obj_NineCard4_8);
}
else if(objectKey == 626)
{
    instance_create(xlocation,ylocation,obj_NineCard4_9);
}
else if(objectKey == 627)
{
    instance_create(xlocation,ylocation,obj_NineCard4_10);
}
else if(objectKey == 628)
{
    instance_create(xlocation,ylocation,obj_NineCard5_0);
}
else if(objectKey == 629)
{
    instance_create(xlocation,ylocation,obj_NineCard5_1);
}
else if(objectKey == 630)
{
    instance_create(xlocation,ylocation,obj_NineCard5_2);
}
else if(objectKey == 631)
{
    instance_create(xlocation,ylocation,obj_NineCard5_3);
}
else if(objectKey == 632)
{
    instance_create(xlocation,ylocation,obj_NineCard5_4);
}
else if(objectKey == 633)
{
    instance_create(xlocation,ylocation,obj_NineCard5_5);
}
else if(objectKey == 634)
{
    instance_create(xlocation,ylocation,obj_NineCard5_6);
}
else if(objectKey == 635)
{
    instance_create(xlocation,ylocation,obj_NineCard5_7);
}
else if(objectKey == 636)
{
    instance_create(xlocation,ylocation,obj_NineCard5_8);
}
else if(objectKey == 637)
{
    instance_create(xlocation,ylocation,obj_NineCard5_9);
}
else if(objectKey == 638)
{
    instance_create(xlocation,ylocation,obj_NineCard5_10);
}
else if(objectKey == 639)
{
    instance_create(xlocation,ylocation,obj_NineCard6_0);
}
else if(objectKey == 640)
{
    instance_create(xlocation,ylocation,obj_NineCard6_1);
}
else if(objectKey == 641)
{
    instance_create(xlocation,ylocation,obj_NineCard6_2);
}
else if(objectKey == 642)
{
    instance_create(xlocation,ylocation,obj_NineCard6_3);
}
else if(objectKey == 643)
{
    instance_create(xlocation,ylocation,obj_NineCard6_4);
}
else if(objectKey == 644)
{
    instance_create(xlocation,ylocation,obj_NineCard6_5);
}
else if(objectKey == 645)
{
    instance_create(xlocation,ylocation,obj_NineCard6_6);
}
else if(objectKey == 646)
{
    instance_create(xlocation,ylocation,obj_NineCard6_7);
}
else if(objectKey == 647)
{
    instance_create(xlocation,ylocation,obj_NineCard6_8);
}
else if(objectKey == 648)
{
    instance_create(xlocation,ylocation,obj_NineCard6_9);
}
else if(objectKey == 649)
{
    instance_create(xlocation,ylocation,obj_NineCard6_10);
}
else if(objectKey == 650)
{
    instance_create(xlocation,ylocation,obj_NineCard7_0);
}
else if(objectKey == 651)
{
    instance_create(xlocation,ylocation,obj_NineCard7_1);
}
else if(objectKey == 652)
{
    instance_create(xlocation,ylocation,obj_NineCard7_2);
}
else if(objectKey == 653)
{
    instance_create(xlocation,ylocation,obj_NineCard7_3);
}
else if(objectKey == 654)
{
    instance_create(xlocation,ylocation,obj_NineCard7_4);
}
else if(objectKey == 655)
{
    instance_create(xlocation,ylocation,obj_NineCard7_5);
}
else if(objectKey == 656)
{
    instance_create(xlocation,ylocation,obj_NineCard7_6);
}
else if(objectKey == 657)
{
    instance_create(xlocation,ylocation,obj_NineCard7_7);
}
else if(objectKey == 658)
{
    instance_create(xlocation,ylocation,obj_NineCard7_8);
}
else if(objectKey == 659)
{
    instance_create(xlocation,ylocation,obj_NineCard7_9);
}
else if(objectKey == 660)
{
    instance_create(xlocation,ylocation,obj_NineCard7_10);
}
else if(objectKey == 661)
{
    instance_create(xlocation,ylocation,obj_NineCard8_0);
}
else if(objectKey == 662)
{
    instance_create(xlocation,ylocation,obj_NineCard8_1);
}
else if(objectKey == 663)
{
    instance_create(xlocation,ylocation,obj_NineCard8_2);
}
else if(objectKey == 664)
{
    instance_create(xlocation,ylocation,obj_NineCard8_3);
}
else if(objectKey == 665)
{
    instance_create(xlocation,ylocation,obj_NineCard8_4);
}
else if(objectKey == 666)
{
    instance_create(xlocation,ylocation,obj_NineCard8_5);
}
else if(objectKey == 667)
{
    instance_create(xlocation,ylocation,obj_NineCard8_6);
}
else if(objectKey == 668)
{
    instance_create(xlocation,ylocation,obj_NineCard8_7);
}
else if(objectKey == 669)
{
    instance_create(xlocation,ylocation,obj_NineCard8_8);
}
else if(objectKey == 670)
{
    instance_create(xlocation,ylocation,obj_NineCard8_9);
}
else if(objectKey == 671)
{
    instance_create(xlocation,ylocation,obj_NineCard8_10);
}
else if(objectKey == 672)
{
    instance_create(xlocation,ylocation,obj_NineCard9_0);
}
else if(objectKey == 673)
{
    instance_create(xlocation,ylocation,obj_NineCard9_1);
}
else if(objectKey == 674)
{
    instance_create(xlocation,ylocation,obj_NineCard9_2);
}
else if(objectKey == 675)
{
    instance_create(xlocation,ylocation,obj_NineCard9_3);
}
else if(objectKey == 676)
{
    instance_create(xlocation,ylocation,obj_NineCard9_4);
}
else if(objectKey == 677)
{
    instance_create(xlocation,ylocation,obj_NineCard9_5);
}
else if(objectKey == 678)
{
    instance_create(xlocation,ylocation,obj_NineCard9_6);
}
else if(objectKey == 679)
{
    instance_create(xlocation,ylocation,obj_NineCard9_7);
}
else if(objectKey == 680)
{
    instance_create(xlocation,ylocation,obj_NineCard9_8);
}
else if(objectKey == 681)
{
    instance_create(xlocation,ylocation,obj_NineCard9_9);
}
else if(objectKey == 682)
{
    instance_create(xlocation,ylocation,obj_NineCard9_10);
}
else if(objectKey == 683)
{
    instance_create(xlocation,ylocation,obj_NineCard10_0);
}
else if(objectKey == 684)
{
    instance_create(xlocation,ylocation,obj_NineCard10_1);
}
else if(objectKey == 685)
{
    instance_create(xlocation,ylocation,obj_NineCard10_2);
}
else if(objectKey == 686)
{
    instance_create(xlocation,ylocation,obj_NineCard10_3);
}
else if(objectKey == 687)
{
    instance_create(xlocation,ylocation,obj_NineCard10_4);
}
else if(objectKey == 688)
{
    instance_create(xlocation,ylocation,obj_NineCard10_5);
}
else if(objectKey == 689)
{
    instance_create(xlocation,ylocation,obj_NineCard10_6);
}
else if(objectKey == 690)
{
    instance_create(xlocation,ylocation,obj_NineCard10_7);
}
else if(objectKey == 691)
{
    instance_create(xlocation,ylocation,obj_NineCard10_8);
}
else if(objectKey == 692)
{
    instance_create(xlocation,ylocation,obj_NineCard10_9);
}
else if(objectKey == 693)
{
    instance_create(xlocation,ylocation,obj_NineCard10_10);
}
else if(objectKey == 694)
{
    instance_create(xlocation,ylocation,obj_NineCardEmptyDeck);
}
//Game Index 6: Penny Arcade Deckbuilding Game: 695-991
else if(objectKey == 695)
{
    instance_create(xlocation,ylocation,obj_PABoard);
}
else if(objectKey == 696)
{
    instance_create(xlocation,ylocation,obj_PAGlobfatherToken);
}
else if(objectKey == 697)
{
    instance_create(xlocation,ylocation,obj_PADiabolus_Select);
}
else if(objectKey == 698)
{
    instance_create(xlocation,ylocation,obj_PAGabesGrossMouth_Select);
}
else if(objectKey == 699)
{
    instance_create(xlocation,ylocation,obj_PAGameFace_Select);
}
else if(objectKey == 700)
{
    instance_create(xlocation,ylocation,obj_PAGunHorse_Select);
}
else if(objectKey == 701)
{
    instance_create(xlocation,ylocation,obj_PAMagefish_Select);
}
else if(objectKey == 702)
{
    instance_create(xlocation,ylocation,obj_PASadZombie_Select);
}
else if(objectKey == 703)
{
    instance_create(xlocation,ylocation,obj_PAAnnika_Select);
}
else if(objectKey == 704)
{
    instance_create(xlocation,ylocation,obj_PABabyNinja_Select);
}
else if(objectKey == 705)
{
    instance_create(xlocation,ylocation,obj_PABatMilk_Select);
}
else if(objectKey == 706)
{
    instance_create(xlocation,ylocation,obj_PABonoTrask_Select);
}
else if(objectKey == 707)
{
    instance_create(xlocation,ylocation,obj_PABromance_Select);
}
else if(objectKey == 708)
{
    instance_create(xlocation,ylocation,obj_PAFaerieCandymancer_Select);
}
else if(objectKey == 709)
{
    instance_create(xlocation,ylocation,obj_PAGiraffeProblems_Select);
}
else if(objectKey == 710)
{
    instance_create(xlocation,ylocation,obj_PAKittens_Select);
}
else if(objectKey == 711)
{
    instance_create(xlocation,ylocation,obj_PAMagicalUnicorn_Select);
}
else if(objectKey == 712)
{
    instance_create(xlocation,ylocation,obj_PAMagiquestMerchant_Select);
}
else if(objectKey == 713)
{
    instance_create(xlocation,ylocation,obj_PANaturalTwenty_Select);
}
else if(objectKey == 714)
{
    instance_create(xlocation,ylocation,obj_PAPhotoshopHero_Select);
}
else if(objectKey == 715)
{
    instance_create(xlocation,ylocation,obj_PAPickleRecognitionEngine_Select);
}
else if(objectKey == 716)
{
    instance_create(xlocation,ylocation,obj_PAPreschoolerLisa_Select);
}
else if(objectKey == 717)
{
    instance_create(xlocation,ylocation,obj_PAPsychicCat_Select);
}
else if(objectKey == 718)
{
    instance_create(xlocation,ylocation,obj_PARobotCowboyAngel_Select);
}
else if(objectKey == 719)
{
    instance_create(xlocation,ylocation,obj_PATheSalmon_Select);
}
else if(objectKey == 720)
{
    instance_create(xlocation,ylocation,obj_PASinistine_Select);
}
else if(objectKey == 721)
{
    instance_create(xlocation,ylocation,obj_PASorcelator_Select);
}
else if(objectKey == 722)
{
    instance_create(xlocation,ylocation,obj_PASuperHotOstrich_Select);
}
else if(objectKey == 723)
{
    instance_create(xlocation,ylocation,obj_PATouchWieners_Select);
}
else if(objectKey == 724)
{
    instance_create(xlocation,ylocation,obj_PAWerewolfInATopHat_Select);
}
else if(objectKey == 725)
{
    instance_create(xlocation,ylocation,obj_PAWorldsBiggestGrape_Select);
}
else if(objectKey == 726)
{
    instance_create(xlocation,ylocation,obj_PABroodaxInDisguise_Select);
}
else if(objectKey == 727)
{
    instance_create(xlocation,ylocation,obj_PACanid_Select);
}
else if(objectKey == 728)
{
    instance_create(xlocation,ylocation,obj_PAChaosWorldSmasher_Select);
}
else if(objectKey == 729)
{
    instance_create(xlocation,ylocation,obj_PADeepCrow_Select);
}
else if(objectKey == 730)
{
    instance_create(xlocation,ylocation,obj_PADiv_Select);
}
else if(objectKey == 731)
{
    instance_create(xlocation,ylocation,obj_PAEvilGumbo_Select);
}
else if(objectKey == 732)
{
    instance_create(xlocation,ylocation,obj_PAFreePlayUser_Select);
}
else if(objectKey == 733)
{
    instance_create(xlocation,ylocation,obj_PAGiantCupcake_Select);
}
else if(objectKey == 734)
{
    instance_create(xlocation,ylocation,obj_PAGiantSnake_Select);
}
else if(objectKey == 735)
{
    instance_create(xlocation,ylocation,obj_PAGlobfather_Select);
}
else if(objectKey == 736)
{
    instance_create(xlocation,ylocation,obj_PAGolfCyborg_Select);
}
else if(objectKey == 737)
{
    instance_create(xlocation,ylocation,obj_PAHeadCrabs_Select);
}
else if(objectKey == 738)
{
    instance_create(xlocation,ylocation,obj_PAHighlyTrainedBadgers_Select);
}
else if(objectKey == 739)
{
    instance_create(xlocation,ylocation,obj_PALaserSquid_Select);
}
else if(objectKey == 740)
{
    instance_create(xlocation,ylocation,obj_PAManSizedSpider_Select);
}
else if(objectKey == 741)
{
    instance_create(xlocation,ylocation,obj_PANippleCrabs_Select);
}
else if(objectKey == 742)
{
    instance_create(xlocation,ylocation,obj_PAProfessorNecroDead_Select);
}
else if(objectKey == 743)
{
    instance_create(xlocation,ylocation,obj_PAScrotuum_Select);
}
else if(objectKey == 744)
{
    instance_create(xlocation,ylocation,obj_PASpectralWorm_Select);
}
else if(objectKey == 745)
{
    instance_create(xlocation,ylocation,obj_PATinyBat_Select);
}
else if(objectKey == 746)
{
    instance_create(xlocation,ylocation,obj_PAWereSwan_Select);
}
else if(objectKey == 747)
{
    instance_create(xlocation,ylocation,obj_PAWinterKing_Select);
}
else if(objectKey == 748)
{
    instance_create(xlocation,ylocation,obj_PAWitchalok_Select);
}
else if(objectKey == 749)
{
    instance_create(xlocation,ylocation,obj_PAKnightGabriel_Select);
}
else if(objectKey == 750)
{
    instance_create(xlocation,ylocation,obj_PACardboardTubeSamurai_Select);
}
else if(objectKey == 751)
{
    instance_create(xlocation,ylocation,obj_PASantaClaus_Select);
}
else if(objectKey == 752)
{
    instance_create(xlocation,ylocation,obj_PATychosGrandma_Select);
}
else if(objectKey == 753)
{
    instance_create(xlocation,ylocation,obj_PASatan_Select);
}
else if(objectKey == 754)
{
    instance_create(xlocation,ylocation,obj_PACthulhu_Select);
}
else if(objectKey == 755)
{
    instance_create(xlocation,ylocation,obj_PADarkTycho_Select);
}
else if(objectKey == 756)
{
    instance_create(xlocation,ylocation,obj_PAFruitFuckerPrime_Select);
}
else if(objectKey == 757)
{
    instance_create(xlocation,ylocation,obj_PADiabolus_Stock);
}
else if(objectKey == 758)
{
    instance_create(xlocation,ylocation,obj_PAGabesGrossMouth_Stock);
}
else if(objectKey == 759)
{
    instance_create(xlocation,ylocation,obj_PAGameFace_Stock);
}
else if(objectKey == 760)
{
    instance_create(xlocation,ylocation,obj_PAGunHorse_Stock);
}
else if(objectKey == 761)
{
    instance_create(xlocation,ylocation,obj_PAMageFish_Stock);
}
else if(objectKey == 762)
{
    instance_create(xlocation,ylocation,obj_PASadZombie_Stock);
}
else if(objectKey == 763)
{
    instance_create(xlocation,ylocation,obj_PAAnnika_Stock);
}
else if(objectKey == 764)
{
    instance_create(xlocation,ylocation,obj_PABabyNinja_Stock);
}
else if(objectKey == 765)
{
    instance_create(xlocation,ylocation,obj_PABatMilk_Stock);
}
else if(objectKey == 766)
{
    instance_create(xlocation,ylocation,obj_PABonoTrask_Stock);
}
else if(objectKey == 767)
{
    instance_create(xlocation,ylocation,obj_PABromance_Stock);
}
else if(objectKey == 768)
{
    instance_create(xlocation,ylocation,obj_PAFaerieCandymancer_Stock);
}
else if(objectKey == 769)
{
    instance_create(xlocation,ylocation,obj_PAGiraffeProblems_Stock);
}
else if(objectKey == 770)
{
    instance_create(xlocation,ylocation,obj_PAKittens_Stock);
}
else if(objectKey == 771)
{
    instance_create(xlocation,ylocation,obj_PAMagicalUnicorn_Stock);
}
else if(objectKey == 772)
{
    instance_create(xlocation,ylocation,obj_PAMagiquestMerchant_Stock);
}
else if(objectKey == 773)
{
    instance_create(xlocation,ylocation,obj_PAMerch_Stock);
}
else if(objectKey == 774)
{
    instance_create(xlocation,ylocation,obj_PANaturalTwenty_Stock);
}
else if(objectKey == 775)
{
    instance_create(xlocation,ylocation,obj_PAPhotoshopHero_Stock);
}
else if(objectKey == 776)
{
    instance_create(xlocation,ylocation,obj_PAPickleRecognitionEngine_Stock);
}
else if(objectKey == 777)
{
    instance_create(xlocation,ylocation,obj_PAPreschoolerLisa_Stock);
}
else if(objectKey == 778)
{
    instance_create(xlocation,ylocation,obj_PAPsychicCat_Stock);
}
else if(objectKey == 779)
{
    instance_create(xlocation,ylocation,obj_PAQuarter_Stock);
}
else if(objectKey == 780)
{
    instance_create(xlocation,ylocation,obj_PARobotCowboyAngel_Stock);
}
else if(objectKey == 781)
{
    instance_create(xlocation,ylocation,obj_PATheSalmon_Stock);
}
else if(objectKey == 782)
{
    instance_create(xlocation,ylocation,obj_PASinistine_Stock);
}
else if(objectKey == 783)
{
    instance_create(xlocation,ylocation,obj_PASorcelator_Stock);
}
else if(objectKey == 784)
{
    instance_create(xlocation,ylocation,obj_PASuperHotOstrich_Stock);
}
else if(objectKey == 785)
{
    instance_create(xlocation,ylocation,obj_PATouchWieners_Stock);
}
else if(objectKey == 786)
{
    instance_create(xlocation,ylocation,obj_PAWerewolfInATopHat_Stock);
}
else if(objectKey == 787)
{
    instance_create(xlocation,ylocation,obj_PAWorldsBiggestGrape_Stock);
}
else if(objectKey == 788)
{
    instance_create(xlocation,ylocation,obj_PABroodaxInDisguise_Stock);
}
else if(objectKey == 789)
{
    instance_create(xlocation,ylocation,obj_PACanid_Stock);
}
else if(objectKey == 790)
{
    instance_create(xlocation,ylocation,obj_PACardboardTube_Stock);
}
else if(objectKey == 791)
{
    instance_create(xlocation,ylocation,obj_PAChaosWorldSmasher_Stock);
}
else if(objectKey == 792)
{
    instance_create(xlocation,ylocation,obj_PADeepCrow_Stock);
}
else if(objectKey == 793)
{
    instance_create(xlocation,ylocation,obj_PADiv_Stock);
}
else if(objectKey == 794)
{
    instance_create(xlocation,ylocation,obj_PAEvilGumbo_Stock);
}
else if(objectKey == 795)
{
    instance_create(xlocation,ylocation,obj_PAFleshReaper_Stock);
}
else if(objectKey == 796)
{
    instance_create(xlocation,ylocation,obj_PAFreePlayUser_Stock);
}
else if(objectKey == 797)
{
    instance_create(xlocation,ylocation,obj_PAGiantCupcake_Stock);
}
else if(objectKey == 798)
{
    instance_create(xlocation,ylocation,obj_PAGiantSnake_Stock);
}
else if(objectKey == 799)
{
    instance_create(xlocation,ylocation,obj_PAGlobfather_Stock);
}
else if(objectKey == 800)
{
    instance_create(xlocation,ylocation,obj_PAGolfCyborg_Stock);
}
else if(objectKey == 801)
{
    instance_create(xlocation,ylocation,obj_PAHeadCrabs_Stock);
}
else if(objectKey == 802)
{
    instance_create(xlocation,ylocation,obj_PAHighlyTrainedBadgers_Stock);
}
else if(objectKey == 803)
{
    instance_create(xlocation,ylocation,obj_PALaserSquid_Stock);
}
else if(objectKey == 804)
{
    instance_create(xlocation,ylocation,obj_PAManSizedSpider_Stock);
}
else if(objectKey == 805)
{
    instance_create(xlocation,ylocation,obj_PANippleCrabs_Stock);
}
else if(objectKey == 806)
{
    instance_create(xlocation,ylocation,obj_PAProfessorNecroDead_Stock);
}
else if(objectKey == 807)
{
    instance_create(xlocation,ylocation,obj_PAScrotuum_Stock);
}
else if(objectKey == 808)
{
    instance_create(xlocation,ylocation,obj_PASpectralWorm_Stock);
}
else if(objectKey == 809)
{
    instance_create(xlocation,ylocation,obj_PATinyBat_Stock);
}
else if(objectKey == 810)
{
    instance_create(xlocation,ylocation,obj_PAWereSwan_Stock);
}
else if(objectKey == 811)
{
    instance_create(xlocation,ylocation,obj_PAWinterKing_Stock);
}
else if(objectKey == 812)
{
    instance_create(xlocation,ylocation,obj_PAWitchalok_Stock);
}
else if(objectKey == 813)
{
    instance_create(xlocation,ylocation,obj_PABatleth);
}
else if(objectKey == 814)
{
    instance_create(xlocation,ylocation,obj_PALicenseToKill);
}
else if(objectKey == 815)
{
    instance_create(xlocation,ylocation,obj_PAPuppyCuddles);
}
else if(objectKey == 816)
{
    instance_create(xlocation,ylocation,obj_PAStaffOfKarapkyss);
}
else if(objectKey == 817)
{
    instance_create(xlocation,ylocation,obj_PATwisp);
}
else if(objectKey == 818)
{
    instance_create(xlocation,ylocation,obj_PAKnightGabriel1);
}
else if(objectKey == 819)
{
    instance_create(xlocation,ylocation,obj_PAKnightGabriel2);
}
else if(objectKey == 820)
{
    instance_create(xlocation,ylocation,obj_PAKnightGabriel3);
}
else if(objectKey == 821)
{
    instance_create(xlocation,ylocation,obj_PAArmoredToTheHilt);
}
else if(objectKey == 822)
{
    instance_create(xlocation,ylocation,obj_PAChivalry);
}
else if(objectKey == 823)
{
    instance_create(xlocation,ylocation,obj_PACrownOfRulershipness);
}
else if(objectKey == 824)
{
    instance_create(xlocation,ylocation,obj_PAFinelyPolished);
}
else if(objectKey == 825)
{
    instance_create(xlocation,ylocation,obj_PAGemEncrusted);
}
else if(objectKey == 826)
{
    instance_create(xlocation,ylocation,obj_PAGoldPlated);
}
else if(objectKey == 827)
{
    instance_create(xlocation,ylocation,obj_PARazorSharp);
}
else if(objectKey == 828)
{
    instance_create(xlocation,ylocation,obj_PASwordOfOvercompensation);
}
else if(objectKey == 829)
{
    instance_create(xlocation,ylocation,obj_PACardboardTubeSamurai1);
}
else if(objectKey == 830)
{
    instance_create(xlocation,ylocation,obj_PACardboardTubeSamurai2);
}
else if(objectKey == 831)
{
    instance_create(xlocation,ylocation,obj_PACardboardTubeSamurai3);
}
else if(objectKey == 832)
{
    instance_create(xlocation,ylocation,obj_PACompassion);
}
else if(objectKey == 833)
{
    instance_create(xlocation,ylocation,obj_PAHonesty);
}
else if(objectKey == 834)
{
    instance_create(xlocation,ylocation,obj_PAHonor);
}
else if(objectKey == 835)
{
    instance_create(xlocation,ylocation,obj_PAHumility);
}
else if(objectKey == 836)
{
    instance_create(xlocation,ylocation,obj_PAJustice);
}
else if(objectKey == 837)
{
    instance_create(xlocation,ylocation,obj_PASacrifice);
}
else if(objectKey == 838)
{
    instance_create(xlocation,ylocation,obj_PASpirituality);
}
else if(objectKey == 839)
{
    instance_create(xlocation,ylocation,obj_PAValor);
}
else if(objectKey == 840)
{
    instance_create(xlocation,ylocation,obj_PASanta1);
}
else if(objectKey == 841)
{
    instance_create(xlocation,ylocation,obj_PASanta2);
}
else if(objectKey == 842)
{
    instance_create(xlocation,ylocation,obj_PASanta3);
}
else if(objectKey == 843)
{
    instance_create(xlocation,ylocation,obj_PACrossbowOfCaroling);
}
else if(objectKey == 844)
{
    instance_create(xlocation,ylocation,obj_PAFrostyTheHitman);
}
else if(objectKey == 845)
{
    instance_create(xlocation,ylocation,obj_PAHeatSeekingMissileToe);
}
else if(objectKey == 846)
{
    instance_create(xlocation,ylocation,obj_PAHowitzerOfHolidayJoy);
}
else if(objectKey == 847)
{
    instance_create(xlocation,ylocation,obj_PANuclearWinterWonderland);
}
else if(objectKey == 848)
{
    instance_create(xlocation,ylocation,obj_PAOrnamentsOfObliteration);
}
else if(objectKey == 849)
{
    instance_create(xlocation,ylocation,obj_PAShotgunOfSharing);
}
else if(objectKey == 850)
{
    instance_create(xlocation,ylocation,obj_PASleighOfSleighing);
}
else if(objectKey == 851)
{
    instance_create(xlocation,ylocation,obj_PATychosGrandma1);
}
else if(objectKey == 852)
{
    instance_create(xlocation,ylocation,obj_PATychosGrandma2);
}
else if(objectKey == 853)
{
    instance_create(xlocation,ylocation,obj_PATychosGrandma3);
}
else if(objectKey == 854)
{
    instance_create(xlocation,ylocation,obj_PABirthdayCheck);
}
else if(objectKey == 855)
{
    instance_create(xlocation,ylocation,obj_PADeliciousMystery);
}
else if(objectKey == 856)
{
    instance_create(xlocation,ylocation,obj_PAFamilyReunion);
}
else if(objectKey == 857)
{
    instance_create(xlocation,ylocation,obj_PAGrandmasLove);
}
else if(objectKey == 858)
{
    instance_create(xlocation,ylocation,obj_PAGrandmasManCandy);
}
else if(objectKey == 859)
{
    instance_create(xlocation,ylocation,obj_PATheKitchenSink);
}
else if(objectKey == 860)
{
    instance_create(xlocation,ylocation,obj_PAThanksgiving);
}
else if(objectKey == 861)
{
    instance_create(xlocation,ylocation,obj_PATurkeyTrilogy);
}
else if(objectKey == 862)
{
    instance_create(xlocation,ylocation,obj_PACthulhu1);
}
else if(objectKey == 863)
{
    instance_create(xlocation,ylocation,obj_PACthulhu2);
}
else if(objectKey == 864)
{
    instance_create(xlocation,ylocation,obj_PACthulhu3);
}
else if(objectKey == 865)
{
    instance_create(xlocation,ylocation,obj_PATheCallOfCthulhu);
}
else if(objectKey == 866)
{
    instance_create(xlocation,ylocation,obj_PADreamingInRlyeh);
}
else if(objectKey == 867)
{
    instance_create(xlocation,ylocation,obj_PATheGreatOldOne);
}
else if(objectKey == 868)
{
    instance_create(xlocation,ylocation,obj_PAHumanSacrifice);
}
else if(objectKey == 869)
{
    instance_create(xlocation,ylocation,obj_PATheMadnessFromTheSea);
}
else if(objectKey == 870)
{
    instance_create(xlocation,ylocation,obj_PANonEuclideanGeometry);
}
else if(objectKey == 871)
{
    instance_create(xlocation,ylocation,obj_PATheStarsAreRight);
}
else if(objectKey == 872)
{
    instance_create(xlocation,ylocation,obj_PATentaclesOfTerror);
}
else if(objectKey == 873)
{
    instance_create(xlocation,ylocation,obj_PADarkTycho1);
}
else if(objectKey == 874)
{
    instance_create(xlocation,ylocation,obj_PADarkTycho2);
}
else if(objectKey == 875)
{
    instance_create(xlocation,ylocation,obj_PADarkTycho3);
}
else if(objectKey == 876)
{
    instance_create(xlocation,ylocation,obj_PADisposableHenchmen);
}
else if(objectKey == 877)
{
    instance_create(xlocation,ylocation,obj_PAEasilyDisarmedExplosiveDevice);
}
else if(objectKey == 878)
{
    instance_create(xlocation,ylocation,obj_PAExplodingDemonPenguin);
}
else if(objectKey == 879)
{
    instance_create(xlocation,ylocation,obj_PAGoldenAppendage);
}
else if(objectKey == 880)
{
    instance_create(xlocation,ylocation,obj_PAKillerFemaleRobotAssassin);
}
else if(objectKey == 881)
{
    instance_create(xlocation,ylocation,obj_PASecretVolcanoLair);
}
else if(objectKey == 882)
{
    instance_create(xlocation,ylocation,obj_PASinisterFacialHair);
}
else if(objectKey == 883)
{
    instance_create(xlocation,ylocation,obj_PAUnstoppableZombieNinjaArmy);
}
else if(objectKey == 884)
{
    instance_create(xlocation,ylocation,obj_PAFruitFuckerPrime1);
}
else if(objectKey == 885)
{
    instance_create(xlocation,ylocation,obj_PAFruitFuckerPrime2);
}
else if(objectKey == 886)
{
    instance_create(xlocation,ylocation,obj_PAFruitFuckerPrime3);
}
else if(objectKey == 887)
{
    instance_create(xlocation,ylocation,obj_PABananaPeeler);
}
else if(objectKey == 888)
{
    instance_create(xlocation,ylocation,obj_PACherryBurster);
}
else if(objectKey == 889)
{
    instance_create(xlocation,ylocation,obj_PACoconutMilker);
}
else if(objectKey == 890)
{
    instance_create(xlocation,ylocation,obj_PAKiwiShaver);
}
else if(objectKey == 891)
{
    instance_create(xlocation,ylocation,obj_PAKumquat);
}
else if(objectKey == 892)
{
    instance_create(xlocation,ylocation,obj_PAMelonBaller);
}
else if(objectKey == 893)
{
    instance_create(xlocation,ylocation,obj_PAPeachCreamer);
}
else if(objectKey == 894)
{
    instance_create(xlocation,ylocation,obj_PASeedSpitter);
}
else if(objectKey == 895)
{
    instance_create(xlocation,ylocation,obj_PASatan1);
}
else if(objectKey == 896)
{
    instance_create(xlocation,ylocation,obj_PASatan2);
}
else if(objectKey == 897)
{
    instance_create(xlocation,ylocation,obj_PASatan3);
}
else if(objectKey == 898)
{
    instance_create(xlocation,ylocation,obj_PACamping);
}
else if(objectKey == 899)
{
    instance_create(xlocation,ylocation,obj_PACheesing);
}
else if(objectKey == 900)
{
    instance_create(xlocation,ylocation,obj_PAGriefing);
}
else if(objectKey == 901)
{
    instance_create(xlocation,ylocation,obj_PAKillStealing);
}
else if(objectKey == 902)
{
    instance_create(xlocation,ylocation,obj_PANerdRage);
}
else if(objectKey == 903)
{
    instance_create(xlocation,ylocation,obj_PANinjaLooting);
}
else if(objectKey == 904)
{
    instance_create(xlocation,ylocation,obj_PASploiting);
}
else if(objectKey == 905)
{
    instance_create(xlocation,ylocation,obj_PATrolling);
}
else if(objectKey == 906)
{
    instance_create(xlocation,ylocation,obj_PAAnnarchy);
}
else if(objectKey == 907)
{
    instance_create(xlocation,ylocation,obj_PACarl);
}
else if(objectKey == 908)
{
    instance_create(xlocation,ylocation,obj_PACatsby);
}
else if(objectKey == 909)
{
    instance_create(xlocation,ylocation,obj_PACharles);
}
else if(objectKey == 910)
{
    instance_create(xlocation,ylocation,obj_PAComicConAnnarchy);
}
else if(objectKey == 911)
{
    instance_create(xlocation,ylocation,obj_PAEdgarAllanPoe);
}
else if(objectKey == 912)
{
    instance_create(xlocation,ylocation,obj_PAFrank);
}
else if(objectKey == 913)
{
    instance_create(xlocation,ylocation,obj_PAGabe);
}
else if(objectKey == 914)
{
    instance_create(xlocation,ylocation,obj_PAJimDarkMagic);
}
else if(objectKey == 915)
{
    instance_create(xlocation,ylocation,obj_PAKarapkyss);
}
else if(objectKey == 916)
{
    instance_create(xlocation,ylocation,obj_PAKreazie);
}
else if(objectKey == 917)
{
    instance_create(xlocation,ylocation,obj_PAMonkeyKingGabe);
}
else if(objectKey == 918)
{
    instance_create(xlocation,ylocation,obj_PAMrPeriod);
}
else if(objectKey == 919)
{
    instance_create(xlocation,ylocation,obj_PANutsy);
}
else if(objectKey == 920)
{
    instance_create(xlocation,ylocation,obj_PARexReady);
}
else if(objectKey == 921)
{
    instance_create(xlocation,ylocation,obj_PAScoutMaster);
}
else if(objectKey == 922)
{
    instance_create(xlocation,ylocation,obj_PATranquilTycho);
}
else if(objectKey == 923)
{
    instance_create(xlocation,ylocation,obj_PATycho);
}
else if(objectKey == 924)
{
    instance_create(xlocation,ylocation,obj_PATychoEramusBrahe);
}
else if(objectKey == 925)
{
    instance_create(xlocation,ylocation,obj_PAUltimatePaxFan);
}
else if(objectKey == 926)
{
    instance_create(xlocation,ylocation,obj_PAWarsunGabe);
}
else if(objectKey == 927)
{
    instance_create(xlocation,ylocation,obj_PAYounglings);
}
else if(objectKey == 928)
{
    instance_create(xlocation,ylocation,obj_PAPaxPox);
}
else if(objectKey == 929)
{
    instance_create(xlocation,ylocation,obj_PASelectionDeck);
}
else if(objectKey == 930)
{
    instance_create(xlocation,ylocation,obj_PAGoldSelectionDeck);
}
else if(objectKey == 931)
{
    instance_create(xlocation,ylocation,obj_PAGreenSelectionDeck);
}
else if(objectKey == 932)
{
    instance_create(xlocation,ylocation,obj_PARedSelectionDeck);
}
else if(objectKey == 933)
{
    instance_create(xlocation,ylocation,obj_PAGoldBossSelectionDeck);
}
else if(objectKey == 934)
{
    instance_create(xlocation,ylocation,obj_PAGreenBossSelectionDeck);
}
else if(objectKey == 935)
{
    instance_create(xlocation,ylocation,obj_PARedBossSelectionDeck);
}
else if(objectKey == 936)
{
    instance_create(xlocation,ylocation,obj_PAPaxPoxDeck);
}
else if(objectKey == 937)
{
    instance_create(xlocation,ylocation,obj_PADiabolusDeck);
}
else if(objectKey == 938)
{
    instance_create(xlocation,ylocation,obj_PAGabesGrossMouthDeck);
}
else if(objectKey == 939)
{
    instance_create(xlocation,ylocation,obj_PAGameFaceDeck);
}
else if(objectKey == 940)
{
    instance_create(xlocation,ylocation,obj_PAGunHorseDeck);
}
else if(objectKey == 941)
{
    instance_create(xlocation,ylocation,obj_PAMageFishDeck);
}
else if(objectKey == 942)
{
    instance_create(xlocation,ylocation,obj_PASadZombieDeck);
}
else if(objectKey == 943)
{
    instance_create(xlocation,ylocation,obj_PAAnnikaDeck);
}
else if(objectKey == 944)
{
    instance_create(xlocation,ylocation,obj_PABabyNinjaDeck);
}
else if(objectKey == 945)
{
    instance_create(xlocation,ylocation,obj_PABatMilkDeck);
}
else if(objectKey == 946)
{
    instance_create(xlocation,ylocation,obj_PABonoTraskDeck);
}
else if(objectKey == 947)
{
    instance_create(xlocation,ylocation,obj_PABromanceDeck);
}
else if(objectKey == 948)
{
    instance_create(xlocation,ylocation,obj_PAFairyCandymancerDeck);
}
else if(objectKey == 949)
{
    instance_create(xlocation,ylocation,obj_PAGiraffeProblemsDeck);
}
else if(objectKey == 950)
{
    instance_create(xlocation,ylocation,obj_PAKittensDeck);
}
else if(objectKey == 951)
{
    instance_create(xlocation,ylocation,obj_PAMagicalUnicornDeck);
}
else if(objectKey == 952)
{
    instance_create(xlocation,ylocation,obj_PAMagiquestMerchantDeck);
}
else if(objectKey == 953)
{
    instance_create(xlocation,ylocation,obj_PAMerchDeck);
}
else if(objectKey == 954)
{
    instance_create(xlocation,ylocation,obj_PANaturalTwentyDeck);
}
else if(objectKey == 955)
{
    instance_create(xlocation,ylocation,obj_PAPhotoshopHeroDeck);
}
else if(objectKey == 956)
{
    instance_create(xlocation,ylocation,obj_PAPickleRecognitionEngineDeck);
}
else if(objectKey == 957)
{
    instance_create(xlocation,ylocation,obj_PAPreschoolerLisaDeck);
}
else if(objectKey == 958)
{
    instance_create(xlocation,ylocation,obj_PAPsychicCatDeck);
}
else if(objectKey == 959)
{
    instance_create(xlocation,ylocation,obj_PAQuarterDeck);
}
else if(objectKey == 960)
{
    instance_create(xlocation,ylocation,obj_PARobotCowboyAngelDeck);
}
else if(objectKey == 961)
{
    instance_create(xlocation,ylocation,obj_PASalmonDeck);
}
else if(objectKey == 962)
{
    instance_create(xlocation,ylocation,obj_PASinistineDeck);
}
else if(objectKey == 963)
{
    instance_create(xlocation,ylocation,obj_PASorcelatorDeck);
}
else if(objectKey == 964)
{
    instance_create(xlocation,ylocation,obj_PASuperHotOstrichDeck);
}
else if(objectKey == 965)
{
    instance_create(xlocation,ylocation,obj_PATouchWienersDeck);
}
else if(objectKey == 966)
{
    instance_create(xlocation,ylocation,obj_PAWerewolfInATopHatDeck);
}
else if(objectKey == 967)
{
    instance_create(xlocation,ylocation,obj_PAWorldsBiggestGrapeDeck);
}
else if(objectKey == 968)
{
    instance_create(xlocation,ylocation,obj_PABroodaxInDisguiseDeck);
}
else if(objectKey == 969)
{
    instance_create(xlocation,ylocation,obj_PACanidDeck);
}
else if(objectKey == 970)
{
    instance_create(xlocation,ylocation,obj_PACardboardTubeDeck);
}
else if(objectKey == 971)
{
    instance_create(xlocation,ylocation,obj_PAChaosWorldSmasherDeck);
}
else if(objectKey == 972)
{
    instance_create(xlocation,ylocation,obj_PADeepCrowDeck);
}
else if(objectKey == 973)
{
    instance_create(xlocation,ylocation,obj_PADivDeck);
}
else if(objectKey == 974)
{
    instance_create(xlocation,ylocation,obj_PAEvilGumboDeck);
}
else if(objectKey == 975)
{
    instance_create(xlocation,ylocation,obj_PAFleshReaperDeck);
}
else if(objectKey == 976)
{
    instance_create(xlocation,ylocation,obj_PAFreePlayUserDeck);
}
else if(objectKey == 977)
{
    instance_create(xlocation,ylocation,obj_PAGiantCupcakeDeck);
}
else if(objectKey == 978)
{
    instance_create(xlocation,ylocation,obj_PAGiantSnakeDeck);
}
else if(objectKey == 979)
{
    instance_create(xlocation,ylocation,obj_PAGlobfatherDeck);
}
else if(objectKey == 980)
{
    instance_create(xlocation,ylocation,obj_PAGolfCyborgDeck);
}
else if(objectKey == 981)
{
    instance_create(xlocation,ylocation,obj_PAHeadCrabsDeck);
}
else if(objectKey == 982)
{
    instance_create(xlocation,ylocation,obj_PAHighlyTrainedBadgersDeck);
}
else if(objectKey == 983)
{
    instance_create(xlocation,ylocation,obj_PALaserSquidDeck);
}
else if(objectKey == 984)
{
    instance_create(xlocation,ylocation,obj_PAManSizedSpiderDeck);
}
else if(objectKey == 985)
{
    instance_create(xlocation,ylocation,obj_PANippleCrabsDeck);
}
else if(objectKey == 986)
{
    instance_create(xlocation,ylocation,obj_PAProfessorNecroDeadDeck);
}
else if(objectKey == 987)
{
    instance_create(xlocation,ylocation,obj_PAScrotuumDeck);
}
else if(objectKey == 988)
{
    instance_create(xlocation,ylocation,obj_PASpectralWormDeck);
}
else if(objectKey == 989)
{
    instance_create(xlocation,ylocation,obj_PATinyBatDeck);
}
else if(objectKey == 990)
{
    instance_create(xlocation,ylocation,obj_PAWereSwanDeck);
}
else if(objectKey == 991)
{
    instance_create(xlocation,ylocation,obj_PAWinterKingDeck);
}
else if(objectKey == 992)
{
    instance_create(xlocation,ylocation,obj_PAWitchalokDeck);
}
else if(objectKey == 993)
{
    instance_create(xlocation,ylocation,obj_PAKnightGabrielDeck);
}
else if(objectKey == 994)
{
    instance_create(xlocation,ylocation,obj_PACardboardTubeSamuraiDeck);
}
else if(objectKey == 995)
{
    instance_create(xlocation,ylocation,obj_PASantaDeck);
}
else if(objectKey == 996)
{
    instance_create(xlocation,ylocation,obj_PATychosGrandmaDeck);
}
else if(objectKey == 997)
{
    instance_create(xlocation,ylocation,obj_PACthuluDeck);
}
else if(objectKey == 998)
{
    instance_create(xlocation,ylocation,obj_PADarkTychoDeck);
}
else if(objectKey == 999)
{
    instance_create(xlocation,ylocation,obj_PAFruitFuckerPrimeDeck);
}
else if(objectKey == 1000)
{
    instance_create(xlocation,ylocation,obj_PASatanDeck);
}
else if(objectKey == 1001)
{
    instance_create(xlocation,ylocation,obj_PACharacterDeck);
}
else if(objectKey == 1002)
{
    instance_create(xlocation,ylocation,obj_PADeleteDeck);
}

