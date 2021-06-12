.class Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Padding;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Padding"
.end annotation


# static fields
.field static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 246
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Padding;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
