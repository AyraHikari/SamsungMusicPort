.class final enum Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SquareEffectList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

.field public static final enum AUTO:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

.field public static final enum CLASSIC:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

.field public static final enum CUSTOM:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

.field public static final enum JAZZ:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

.field public static final enum NORMAL:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

.field public static final enum POP:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

.field public static final enum ROCK:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;


# instance fields
.field public title:I

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1736
    new-instance v0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    const/16 v3, 0x63

    const v4, 0x7f0b0098

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->AUTO:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    new-instance v0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    const-string v1, "NORMAL"

    sget v3, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_NORMAL:I

    const/4 v4, 0x1

    const v5, 0x7f0b02c9

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->NORMAL:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    .line 1737
    new-instance v0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    const-string v1, "CLASSIC"

    sget v3, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_CLASSIC:I

    const/4 v5, 0x2

    const v6, 0x7f0b00df

    invoke-direct {v0, v1, v5, v3, v6}, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->CLASSIC:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    .line 1738
    new-instance v0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    const-string v1, "ROCK"

    sget v3, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_ROCK:I

    const/4 v6, 0x3

    const v7, 0x7f0b0333

    invoke-direct {v0, v1, v6, v3, v7}, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->ROCK:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    .line 1739
    new-instance v0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    const-string v1, "POP"

    sget v3, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/4 v7, 0x4

    const v8, 0x7f0b02fc

    invoke-direct {v0, v1, v7, v3, v8}, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->POP:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    new-instance v0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    const-string v1, "JAZZ"

    sget v3, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_JAZZ:I

    const/4 v8, 0x5

    const v9, 0x7f0b016d

    invoke-direct {v0, v1, v8, v3, v9}, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->JAZZ:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    .line 1740
    new-instance v0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    const-string v1, "CUSTOM"

    sget v3, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_USER:I

    const/4 v9, 0x6

    const v10, 0x7f0b00f3

    invoke-direct {v0, v1, v9, v3, v10}, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->CUSTOM:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    const/4 v0, 0x7

    .line 1735
    new-array v0, v0, [Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    sget-object v1, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->AUTO:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->NORMAL:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->CLASSIC:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->ROCK:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->POP:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->JAZZ:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->CUSTOM:Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    aput-object v1, v0, v9

    sput-object v0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->$VALUES:[Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p4    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1747
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1748
    iput p3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->value:I

    .line 1749
    iput p4, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->title:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;
    .locals 1

    .line 1735
    const-class v0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;
    .locals 1

    .line 1735
    sget-object v0, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->$VALUES:[Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    return-object v0
.end method
