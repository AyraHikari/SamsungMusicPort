.class final Lcom/samsung/android/app/music/recommend/SeedTracker$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/recommend/SeedTracker;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;I)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/reflect/Type;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Object;I)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/samsung/android/app/music/recommend/SeedTracker$7;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/recommend/SeedTracker$7;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/recommend/SeedTracker$7;->c:Ljava/lang/reflect/Type;

    iput-object p4, p0, Lcom/samsung/android/app/music/recommend/SeedTracker$7;->d:Ljava/lang/Object;

    iput p5, p0, Lcom/samsung/android/app/music/recommend/SeedTracker$7;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    invoke-static {}, Lcom/samsung/android/app/music/recommend/SeedTracker;->a()Lcom/samsung/android/app/music/recommend/SeedTracker$TrackCondition;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/recommend/SeedTracker$7;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/recommend/SeedTracker$TrackCondition;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/recommend/SeedTracker$7;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/recommend/SeedTracker$7;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/recommend/SeedTracker$7;->c:Ljava/lang/reflect/Type;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/recommend/SeedTracker;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/samsung/android/app/music/recommend/SeedTracker$7;->d:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object v1, p0, Lcom/samsung/android/app/music/recommend/SeedTracker$7;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 144
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/music/recommend/SeedTracker$7;->e:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/samsung/android/app/music/recommend/SeedTracker$7;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/recommend/SeedTracker$7;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 147
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 150
    :cond_0
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
