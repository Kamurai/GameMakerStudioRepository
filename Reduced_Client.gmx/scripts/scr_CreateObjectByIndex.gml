/*

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

*/
