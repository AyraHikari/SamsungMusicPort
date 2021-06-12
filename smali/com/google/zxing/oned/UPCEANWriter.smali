.class public abstract Lcom/google/zxing/oned/UPCEANWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 31
    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->b:[I

    array-length v0, v0

    return v0
.end method
