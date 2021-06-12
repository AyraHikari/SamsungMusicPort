.class public Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$PaymentDataException;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentDataException"
.end annotation


# instance fields
.field private final errorCode:I

.field private final msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1254
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 1255
    iput p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$PaymentDataException;->errorCode:I

    const-string p1, "error"

    .line 1256
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$PaymentDataException;->msg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1259
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 1260
    iput p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$PaymentDataException;->errorCode:I

    .line 1261
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$PaymentDataException;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 1265
    iget v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$PaymentDataException;->errorCode:I

    return v0
.end method
