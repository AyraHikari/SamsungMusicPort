.class Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextSearchListener"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment$1;)V
    .locals 0

    .line 834
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;)Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;
    .locals 0

    .line 834
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;->b:Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;)Ljava/lang/String;
    .locals 0

    .line 834
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 834
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;)Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;
    .locals 0

    .line 834
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;->b:Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;

    return-object p0
.end method
