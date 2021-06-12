.class public Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;
.super Ljava/util/IllegalFormatConversionException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/formatter/FormatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalFormatConversionCategoryException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x10366beL


# instance fields
.field private final expected:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field private final found:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)V
    .locals 3

    .line 198
    iget-object v0, p1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->chars:Ljava/lang/String;

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->chars:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    iget-object v2, p2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    if-nez v2, :cond_1

    const-class v1, Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v2, p2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    aget-object v1, v2, v1

    .line 198
    :goto_1
    invoke-direct {p0, v0, v1}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    .line 201
    iput-object p1, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->expected:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 202
    iput-object p2, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->found:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-void
.end method


# virtual methods
.method public getExpected()Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->expected:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method

.method public getFound()Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->found:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    const-string v0, "Expected category %s but found %s."

    const/4 v1, 0x2

    .line 215
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->expected:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->found:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
