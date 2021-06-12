.class public Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:I
    .annotation build Landroid/support/annotation/MenuRes;
    .end annotation
.end field

.field private b:Landroid/support/v4/app/Fragment;

.field private c:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->a:I

    .line 93
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->b:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->b:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->a:I

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;)Lcom/samsung/android/app/music/browse/list/BrowseShareable;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->c:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/browse/list/BrowseShareable;)Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;->c:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    return-object p0
.end method

.method public a()Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;
    .locals 2

    .line 112
    new-instance v0, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu;-><init>(Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$Builder;Lcom/samsung/android/app/music/browse/list/menu/BrowseTrackContentDefaultMenu$1;)V

    return-object v0
.end method
