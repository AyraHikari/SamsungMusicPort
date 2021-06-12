.class public Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnexpectedException;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnexpectedException"
.end annotation


# instance fields
.field private final msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1240
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 1241
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnexpectedException;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnexpectedException;->msg:Ljava/lang/String;

    return-object v0
.end method
