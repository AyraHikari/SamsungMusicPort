.class Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;
.super Ljava/lang/Object;
.source "SemSilenceDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/mir/SemSilenceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecodeResult"
.end annotation


# instance fields
.field public Hz:I

.field public duration:J

.field public findBackUs:J

.field public findFrontUs:J

.field public mime:Ljava/lang/String;

.field public nCh:I

.field public final synthetic this$0:Lcom/samsung/android/media/mir/SemSilenceDetector;


# direct methods
.method private constructor <init>(Lcom/samsung/android/media/mir/SemSilenceDetector;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->this$0:Lcom/samsung/android/media/mir/SemSilenceDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->duration:J

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->mime:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->Hz:I

    .line 5
    iput p1, p0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->nCh:I

    .line 6
    iput-wide v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findFrontUs:J

    .line 7
    iput-wide v0, p0, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;->findBackUs:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/media/mir/SemSilenceDetector;Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/media/mir/SemSilenceDetector$DecodeResult;-><init>(Lcom/samsung/android/media/mir/SemSilenceDetector;)V

    return-void
.end method
