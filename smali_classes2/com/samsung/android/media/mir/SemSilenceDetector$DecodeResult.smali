.class Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/mir/SemSilenceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeResult"
.end annotation


# instance fields
.field Hz:I

.field duration:J

.field findBackUs:J

.field findFrontUs:J

.field mime:Ljava/lang/String;

.field nCh:I

.field final synthetic this$0:Lcom/samsung/android/media/mir/SemSilenceDetector;


# direct methods
.method private constructor <init>(Lcom/samsung/android/media/mir/SemSilenceDetector;)V
    .locals 2

    .line 87
    iput-object p1, p0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->this$0:Lcom/samsung/android/media/mir/SemSilenceDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 88
    iput-wide v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J

    const-string p1, ""

    .line 89
    iput-object p1, p0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->mime:Ljava/lang/String;

    const/4 p1, 0x0

    .line 90
    iput p1, p0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    .line 91
    iput p1, p0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    .line 92
    iput-wide v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 93
    iput-wide v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/media/mir/SemSilenceDetector;Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;-><init>(Lcom/samsung/android/media/mir/SemSilenceDetector;)V

    return-void
.end method
