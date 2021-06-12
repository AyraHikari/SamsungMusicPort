.class final Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter$execute$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->execute(Ljava/lang/Long;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter$execute$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter$execute$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->access$getItems$p(Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;)Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 39
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "Playlist-Shortcut"

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " tries to delete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter$execute$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/ShortcutDeleter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x100004

    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    .line 26
    invoke-static/range {v3 .. v9}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
