.class public final Lcom/google/zxing/oned/UPCEReader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "SourceFile"


# static fields
.field static final a:[I

.field private static final g:[I

.field private static final h:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    .line 55
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/oned/UPCEReader;->a:[I

    const/4 v1, 0x6

    .line 62
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/zxing/oned/UPCEReader;->g:[I

    const/4 v1, 0x2

    .line 69
    new-array v1, v1, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/zxing/oned/UPCEReader;->h:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x38
        0x34
        0x32
        0x31
        0x2c
        0x26
        0x23
        0x2a
        0x29
        0x25
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x38
        0x34
        0x32
        0x31
        0x2c
        0x26
        0x23
        0x2a
        0x29
        0x25
    .end array-data

    :array_3
    .array-data 4
        0x7
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method
