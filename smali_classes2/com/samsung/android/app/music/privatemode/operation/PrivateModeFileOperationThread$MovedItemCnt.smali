.class Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MovedItemCnt"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->a:I

    .line 92
    iput v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$1;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;-><init>()V

    return-void
.end method
