.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PurchasableException"
.end annotation


# static fields
.field public static final ERR_EXPLICIT:I = 0x1

.field public static final ERR_FAIL_TO_PURCHASE:I = -0xa

.field public static final ERR_PURCHASE_EOS:I = -0xb

.field public static final ERR_SERVER:I = 0x3

.field public static final ERR_STORAGE:I


# instance fields
.field private final errorCode:I

.field private final errorMsg:Ljava/lang/String;


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    .line 469
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 470
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;->errorCode:I

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error Code["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 474
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 475
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;->errorCode:I

    .line 476
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;->errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getErrorCode()I
    .locals 1

    .line 480
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;->errorCode:I

    return v0
.end method

.method protected getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$PurchasableException;->errorMsg:Ljava/lang/String;

    return-object v0
.end method
