.class public Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;
.super Ljava/util/MissingFormatArgumentException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/formatter/FormatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExcessiveOrMissingFormatArgumentException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x10366beL


# instance fields
.field private final expected:I

.field private final found:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const-string v0, "-"

    .line 165
    invoke-direct {p0, v0}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    .line 166
    iput p1, p0, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->expected:I

    .line 167
    iput p2, p0, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->found:I

    return-void
.end method


# virtual methods
.method public getExpected()I
    .locals 1

    .line 171
    iget v0, p0, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->expected:I

    return v0
.end method

.method public getFound()I
    .locals 1

    .line 175
    iget v0, p0, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->found:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    const-string v0, "Expected %d arguments but found %d."

    const/4 v1, 0x2

    .line 180
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->expected:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lorg/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;->found:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
