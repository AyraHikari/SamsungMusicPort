.class Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Header;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Header"
.end annotation


# static fields
.field static final a:[B

.field static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    .line 44
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Header;->a:[B

    const/4 v0, 0x1

    .line 46
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Header;->b:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method
