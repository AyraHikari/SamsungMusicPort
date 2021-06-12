.class public Lcom/dawin/util/CommonUtils$ScreenSize;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dawin/util/CommonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenSize"
.end annotation


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dawin/util/CommonUtils$ScreenSize;->mWidth:I

    iput p2, p0, Lcom/dawin/util/CommonUtils$ScreenSize;->mHeight:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/dawin/util/CommonUtils$ScreenSize;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/dawin/util/CommonUtils$ScreenSize;->mWidth:I

    return v0
.end method
