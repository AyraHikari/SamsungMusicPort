.class Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TagObservable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

.field private b:Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;

.field private c:Ljava/lang/Object;

.field private d:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;)Ljava/lang/Object;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->c:Ljava/lang/Object;

    return-object p0
.end method

.method private a(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->d:I

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->b:Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;I)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;)I
    .locals 0

    .line 131
    iget p0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->d:I

    return p0
.end method


# virtual methods
.method a(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 152
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 153
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->b:Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->b:Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updater : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
