.class final Lcom/samsung/android/app/music/util/player/PlayRadioObservable$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Ljava/lang/String;ZZLcom/samsung/android/app/music/model/AdInfo;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/player/PlayRadioObservable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$3;->a:Lcom/samsung/android/app/music/util/player/PlayRadioObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$3;->a:Lcom/samsung/android/app/music/util/player/PlayRadioObservable;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->release()V

    return-void
.end method
