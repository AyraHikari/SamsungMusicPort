.class public Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/advertise/IAdImpressionListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->a:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->b:Ljava/util/List;

    const-string v0, "Advert.AdBroadCastReceiver"

    const-string v1, "AdBroadCastReceiver"

    .line 28
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->b()V

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;
    .locals 2

    .line 33
    sget-object v0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->c:Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->c:Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;

    invoke-direct {v1}, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;-><init>()V

    sput-object v1, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->c:Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->c:Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;

    return-object v0
.end method

.method private b(Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const-string v0, "Advert.AdBroadCastReceiver"

    const-string v1, "callPopupClosed"

    .line 60
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 65
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/advertise/IAdImpressionListener;

    if-eqz v1, :cond_0

    const-string v3, "Advert.AdBroadCastReceiver"

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callPopupClosed - listener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-interface {v1, p1}, Lcom/samsung/android/app/music/advertise/IAdImpressionListener;->a(Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const-string v0, "Advert.AdBroadCastReceiver"

    const-string v1, "callPopupImage"

    .line 49
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/advertise/IAdImpressionListener;

    if-eqz v1, :cond_0

    .line 54
    invoke-interface {v1}, Lcom/samsung/android/app/music/advertise/IAdImpressionListener;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;)V
    .locals 2

    const-string v0, "Advert.AdBroadCastReceiver"

    const-string v1, "postStickyAdPopupClosed  : postAdPopupClosed"

    .line 115
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->b(Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "milk.advertise.popup.close"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_POPUP_TYPE"

    .line 120
    invoke-virtual {p1}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->getValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "Advert.AdBroadCastReceiver"

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postStickyAdPopupClosed  : stickyActionList size :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/advertise/IAdImpressionListener;)V
    .locals 5

    const-string v0, "Advert.AdBroadCastReceiver"

    const-string v1, "subscribe : called"

    .line 74
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/app/music/advertise/IAdImpressionListener;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Advert.AdBroadCastReceiver"

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribe  : register subscriber key :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/app/music/advertise/IAdImpressionListener;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/app/music/advertise/IAdImpressionListener;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Advert.AdBroadCastReceiver"

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subscribe  : stickyActionList size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->b:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 87
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4dadd4ff

    if-eq v3, v4, :cond_2

    const v4, -0x145f42a4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "milk.advertise.popup.close"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "milk.advertise.impression.messge"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "EXTRA_POPUP_TYPE"

    const/4 v2, 0x2

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->create(I)Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    move-result-object v0

    .line 92
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->b(Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;)V

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->d()V

    goto :goto_0

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/advertise/IAdImpressionListener;)V
    .locals 3

    const-string v0, "Advert.AdBroadCastReceiver"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsubscribe - key :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/app/music/advertise/IAdImpressionListener;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/app/music/advertise/IAdImpressionListener;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/app/music/advertise/IAdImpressionListener;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Advert.AdBroadCastReceiver"

    const-string v0, "unsubscribe  : unsubscribe"

    .line 104
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdBroadCastReceiver;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method
