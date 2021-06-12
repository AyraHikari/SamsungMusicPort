.class public final Lcom/google/zxing/qrcode/decoder/Version$ECB;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECB"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->a:I

    .line 225
    iput p2, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 233
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->b:I

    return v0
.end method
