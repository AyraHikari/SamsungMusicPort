.class public Lcom/samsung/android/app/music/browse/data/BrowseContentData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/browse/data/BrowseContentData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->m:Ljava/util/List;

    .line 37
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->a(Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->a:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->b(Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->b:I

    .line 39
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->c(Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->c:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->d(Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->d:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->e(Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->e:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->f(Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->f:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->g(Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->g:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->h(Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->h:I

    .line 45
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->i(Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->i:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->j(Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->j:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->k(Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->k:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;->l(Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->l:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;Lcom/samsung/android/app/music/browse/data/BrowseContentData$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;-><init>(Lcom/samsung/android/app/music/browse/data/BrowseContentData$Builder;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/browse/data/BrowseContentData;",
            ">;)V"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->h:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->k:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->l:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/browse/data/BrowseContentData;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->m:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 203
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
