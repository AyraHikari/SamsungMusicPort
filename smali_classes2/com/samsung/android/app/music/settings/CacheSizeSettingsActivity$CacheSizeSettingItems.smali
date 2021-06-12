.class Lcom/samsung/android/app/music/settings/CacheSizeSettingsActivity$CacheSizeSettingItems;
.super Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/CacheSizeSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheSizeSettingItems"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;-><init>()V

    .line 84
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_100:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getPosition()I

    move-result v0

    const v1, 0x7f0b04bc

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/settings/CacheSizeSettingsActivity$CacheSizeSettingItems;->a(II)V

    .line 85
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_500:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getPosition()I

    move-result v0

    const v1, 0x7f0b04be

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/settings/CacheSizeSettingsActivity$CacheSizeSettingItems;->a(II)V

    .line 86
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->GB_1:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getPosition()I

    move-result v0

    const v1, 0x7f0b04bd

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/settings/CacheSizeSettingsActivity$CacheSizeSettingItems;->a(II)V

    return-void
.end method
