.class public Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/SearchQueryArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 127
    iput v0, p0, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->b:I

    .line 137
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;)I
    .locals 0

    .line 124
    iget p0, p0, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->b:I

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;)Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;)I
    .locals 0

    .line 124
    iget p0, p0, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->c:I

    return p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;)Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;)[Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->e:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;
    .locals 0

    .line 141
    iput p1, p0, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->b:I

    return-object p0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->d:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->e:[Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1

    .line 157
    new-instance v0, Lcom/samsung/android/app/music/search/SearchQueryArgs;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/SearchQueryArgs;-><init>(Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;)V

    return-object v0
.end method

.method public b(I)Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;
    .locals 0

    .line 146
    iput p1, p0, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->c:I

    return-object p0
.end method
