.class public final Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/StateConvertible;


# static fields
.field private static final a:Ljava/lang/String; = "StateConvertibleImpl"


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->b:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->c:Ljava/util/Map;

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->b:Ljava/util/Map;

    const-string v1, "Music"

    const-string v2, "LAUNCH_APP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->b:Ljava/util/Map;

    const-string v1, "GlobalMusic"

    const-string v2, "LAUNCH_APP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->b:Ljava/util/Map;

    const-string v1, "SearchTab"

    const-string v2, "MOVE_MAIN_TAB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->b:Ljava/util/Map;

    const-string v1, "MyMusicTab"

    const-string v2, "MOVE_MAIN_TAB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->b:Ljava/util/Map;

    const-string v1, "DiscoverTab"

    const-string v2, "MOVE_MAIN_TAB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->c:Ljava/util/Map;

    const-string v1, "keyword"

    const-string v2, "KEYWORD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v1/converter/ConvertGlobalMenu;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v1/converter/ConvertLocal;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v1/converter/ConvertMyStations;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v1/converter/ConvertPlayer;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v1/converter/ConvertSearch;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v1/converter/ConvertSettings;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v1/converter/ConvertBrowse;->a(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
    .locals 6
    .param p1    # Lcom/samsung/android/sdk/bixby/data/State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->b()Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 54
    :goto_0
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->e()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->setLastState(Z)V

    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->d()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->setLandingState(Z)V

    .line 58
    sget-object v3, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convert() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->c()Ljava/util/List;

    move-result-object p1

    .line 61
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->b()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->addParameterName(Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v1/converter/StateConvertibleImpl;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object v2
.end method
