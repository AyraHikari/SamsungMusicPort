.class Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FormatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipartKey"
.end annotation


# instance fields
.field private final a:[Ljava/lang/Object;

.field private b:I


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->a:[Ljava/lang/Object;

    check-cast p1, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;

    iget-object p1, p1, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->a:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 5

    .line 253
    iget v0, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->b:I

    if-nez v0, :cond_2

    .line 255
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->a:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    mul-int/lit8 v3, v3, 0x7

    .line 257
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    :cond_1
    iput v3, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->b:I

    .line 262
    :cond_2
    iget v0, p0, Lorg/apache/commons/lang3/time/FormatCache$MultipartKey;->b:I

    return v0
.end method
