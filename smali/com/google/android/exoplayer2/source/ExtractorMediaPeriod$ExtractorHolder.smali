.class final Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtractorHolder"
.end annotation


# instance fields
.field private final a:[Lcom/google/android/exoplayer2/extractor/Extractor;

.field private final b:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private c:Lcom/google/android/exoplayer2/extractor/Extractor;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->a:[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 898
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->b:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Landroid/net/Uri;)Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->c:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz v0, :cond_0

    .line 915
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->c:Lcom/google/android/exoplayer2/extractor/Extractor;

    return-object p1

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->a:[Lcom/google/android/exoplayer2/extractor/Extractor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 919
    :try_start_0
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 920
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->c:Lcom/google/android/exoplayer2/extractor/Extractor;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->a()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->a()V

    throw p2

    :catch_0
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 929
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->c:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz p1, :cond_3

    .line 933
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->c:Lcom/google/android/exoplayer2/extractor/Extractor;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->b:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/Extractor;->a(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 934
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->c:Lcom/google/android/exoplayer2/extractor/Extractor;

    return-object p1

    .line 930
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "None of the available extractors ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->a:[Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 931
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") could read the stream."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p1
.end method

.method public a()V
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->c:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->c:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/Extractor;->c()V

    const/4 v0, 0x0

    .line 940
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->c:Lcom/google/android/exoplayer2/extractor/Extractor;

    :cond_0
    return-void
.end method
