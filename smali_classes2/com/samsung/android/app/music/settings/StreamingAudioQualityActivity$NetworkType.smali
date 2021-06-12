.class final enum Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

.field public static final enum MOBILE:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

.field public static final enum WIFI:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    new-instance v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    const-string v1, "MOBILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;->MOBILE:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    new-instance v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    const-string v1, "WIFI"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;->WIFI:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    sget-object v1, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;->MOBILE:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;->WIFI:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;->$VALUES:[Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;
    .locals 1

    .line 53
    const-class v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;
    .locals 1

    .line 53
    sget-object v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;->$VALUES:[Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    return-object v0
.end method
