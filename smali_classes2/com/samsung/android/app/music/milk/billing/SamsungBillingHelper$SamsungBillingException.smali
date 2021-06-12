.class public Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamsungBillingException"
.end annotation


# instance fields
.field private final errorCode:I

.field private final msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1274
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 1275
    iput p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;->errorCode:I

    const-string p1, "error"

    .line 1276
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;->msg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1279
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 1280
    iput p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;->errorCode:I

    .line 1281
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 1285
    iget v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;->errorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$SamsungBillingException;->msg:Ljava/lang/String;

    return-object v0
.end method
