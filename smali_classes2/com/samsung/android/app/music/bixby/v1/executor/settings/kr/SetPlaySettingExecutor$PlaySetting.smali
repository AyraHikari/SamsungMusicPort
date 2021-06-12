.class final enum Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlaySetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;

.field public static final enum PLAY_ALL_SONGS:Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;

.field public static final enum PLAY_SELECTED_SONG:Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;


# instance fields
.field private prefValue:I

.field private slotValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;

    const-string v1, "PLAY_ALL_SONGS"

    const-string v2, "playAll"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->PLAY_ALL_SONGS:Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;

    .line 27
    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;

    const-string v1, "PLAY_SELECTED_SONG"

    const-string v2, "playSelectedSong"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->PLAY_SELECTED_SONG:Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;

    const/4 v0, 0x2

    .line 24
    new-array v0, v0, [Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;

    sget-object v1, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->PLAY_ALL_SONGS:Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->PLAY_SELECTED_SONG:Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->$VALUES:[Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->slotValue:Ljava/lang/String;

    .line 36
    iput p4, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->prefValue:I

    return-void
.end method

.method public static getPosition(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;
    .locals 5

    .line 44
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->values()[Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 45
    iget-object v4, v3, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->slotValue:Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;
    .locals 1

    .line 24
    const-class v0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->$VALUES:[Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;

    return-object v0
.end method


# virtual methods
.method public getPrefValue()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->prefValue:I

    return v0
.end method
