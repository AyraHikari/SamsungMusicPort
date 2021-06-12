.class Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SkipSilenceData"
.end annotation


# instance fields
.field private endPosition:J

.field private isGetPosition:Z

.field private isSupportedMedia:Z

.field private startPosition:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->endPosition:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;J)J
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->endPosition:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->startPosition:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;J)J
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->startPosition:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->isGetPosition:Z

    return p0
.end method

.method static synthetic access$602(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->isGetPosition:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->isSupportedMedia:Z

    return p0
.end method

.method static synthetic access$702(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->isSupportedMedia:Z

    return p1
.end method


# virtual methods
.method clear()V
    .locals 3

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->isSupportedMedia:Z

    const-wide/16 v1, 0x0

    .line 61
    iput-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->startPosition:J

    .line 62
    iput-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->endPosition:J

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->isGetPosition:Z

    return-void
.end method

.method setData(ZJJZ)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->isSupportedMedia:Z

    .line 68
    iput-wide p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->startPosition:J

    .line 69
    iput-wide p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->endPosition:J

    .line 70
    iput-boolean p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->isGetPosition:Z

    return-void
.end method
