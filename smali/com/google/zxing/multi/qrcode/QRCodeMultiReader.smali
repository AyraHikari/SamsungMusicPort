.class public final Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;
.super Lcom/google/zxing/qrcode/QRCodeReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;
    }
.end annotation


# static fields
.field private static final a:[Lcom/google/zxing/Result;

.field private static final b:[Lcom/google/zxing/ResultPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 50
    new-array v1, v0, [Lcom/google/zxing/Result;

    sput-object v1, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->a:[Lcom/google/zxing/Result;

    .line 51
    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->b:[Lcom/google/zxing/ResultPoint;

    return-void
.end method
