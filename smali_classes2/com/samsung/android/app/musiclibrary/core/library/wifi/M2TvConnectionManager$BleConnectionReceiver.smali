.class final Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$BleConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BleConnectionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$BleConnectionReceiver;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private final handleTvListIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 250
    :try_start_0
    sput-boolean v0, Lcom/samsung/android/library/beaconmanager/Tv;->mUseVersion1Data:Z

    const-string v2, "tv_list"

    .line 251
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type java.util.ArrayList<com.samsung.android.library.beaconmanager.Tv>"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :catch_0
    sput-boolean v1, Lcom/samsung/android/library/beaconmanager/Tv;->mUseVersion1Data:Z

    .line 255
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/content/Intent;

    const-string v2, "tv_list"

    .line 257
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.util.ArrayList<com.samsung.android.library.beaconmanager.Tv>"

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.content.Intent"

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string p1, "SMUSIC-M2TvManager"

    const-string v2, "bleConnectionReceiver Can not get TV list."

    .line 259
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    :goto_1
    if-eqz v2, :cond_5

    const-string p1, "M2TvManager"

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bleConnectionReceiver Available TV="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$BleConnectionReceiver;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->access$getOnTvStateChangeListeners$p(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 327
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;

    .line 266
    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;->onTvListDialogShow(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 268
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_4

    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$BleConnectionReceiver;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "it[0]"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/library/beaconmanager/Tv;

    invoke-virtual {v0}, Lcom/samsung/android/library/beaconmanager/Tv;->getModelName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "it[0].modelName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$Companion;->requestConnection(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string p1, "SMUSIC-M2TvManager"

    const-string v0, "bleConnectionReceiver TV list is empty."

    .line 269
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 233
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "M2TvManager"

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bleConnectionReceiver Action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 235
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p2, "com.sec.android.m2tv.TV_SHOW_TV_ON_DLG"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 240
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$BleConnectionReceiver;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->access$getOnTvStateChangeListeners$p(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 323
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;

    .line 240
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;->onTvTurnOnDialogShow()V

    goto :goto_0

    :sswitch_1
    const-string p2, "com.sec.android.m2tv.TV_DETECTED"

    .line 235
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 236
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$BleConnectionReceiver;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->access$notifyDeviceAvailable(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;Z)V

    goto :goto_2

    :sswitch_2
    const-string p2, "com.sec.android.m2tv.TV_DETACHED"

    .line 235
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 237
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$BleConnectionReceiver;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->access$notifyDeviceAvailable(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;Z)V

    goto :goto_2

    :sswitch_3
    const-string v0, "com.sec.android.m2tv.TV_LIST"

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 238
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$BleConnectionReceiver;->handleTvListIntent(Landroid/content/Intent;)V

    goto :goto_2

    :sswitch_4
    const-string p2, "com.sec.android.m2tv.TV_CANCEL_TV_ON_DLG"

    .line 235
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 243
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$BleConnectionReceiver;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->access$getOnTvStateChangeListeners$p(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 325
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;

    .line 243
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;->onTvTurnOnDialogDismiss()V

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :cond_3
    :goto_3
    const-string v0, "M2TvManager"

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BleConnectionReceiver context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", intent="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1ed7fd8a -> :sswitch_4
        -0x1d7f31a3 -> :sswitch_3
        -0x1351564f -> :sswitch_2
        -0x1318cb3f -> :sswitch_1
        0x1ff1eef9 -> :sswitch_0
    .end sparse-switch
.end method
