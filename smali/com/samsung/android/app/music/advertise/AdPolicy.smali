.class public Lcom/samsung/android/app/music/advertise/AdPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/advertise/AdPlayType;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdPolicy;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdPolicy;->c:Z

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/advertise/AdPolicy;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 19
    iget-boolean p2, p0, Lcom/samsung/android/app/music/advertise/AdPolicy;->c:Z

    if-nez p2, :cond_0

    .line 20
    iget-object p2, p0, Lcom/samsung/android/app/music/advertise/AdPolicy;->b:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdPlayType;->AI:Lcom/samsung/android/app/music/advertise/AdPlayType;

    invoke-interface {p2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    iget-object p2, p0, Lcom/samsung/android/app/music/advertise/AdPolicy;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdPolicy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 0

    .line 27
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdPolicy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/samsung/android/app/music/advertise/AdPolicy;->a:I

    :try_start_0
    const-string v1, "0"

    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdPolicy;->b:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/advertise/AdPlayType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/samsung/android/app/music/advertise/AdPolicy;->c:Z

    return-void

    :cond_0
    const-string v1, "-"

    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 46
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 47
    invoke-static {v3}, Lcom/samsung/android/app/music/advertise/AdPolicy;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 50
    iget-object v5, p0, Lcom/samsung/android/app/music/advertise/AdPolicy;->b:Ljava/util/List;

    sget-object v6, Lcom/samsung/android/app/music/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/advertise/AdPlayType;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 53
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/advertise/AdPolicy;->b:Ljava/util/List;

    invoke-static {v3}, Lcom/samsung/android/app/music/advertise/AdPlayType;->create(Ljava/lang/String;)Lcom/samsung/android/app/music/advertise/AdPlayType;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AdPolicy"

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsePattern"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdPolicy;->b:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/music/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/advertise/AdPlayType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPolicy{mCurrentIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/advertise/AdPolicy;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPlayPattens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/advertise/AdPolicy;->b:Ljava/util/List;

    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPlaySleepMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/advertise/AdPolicy;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
