.class public final Lcom/samsung/android/app/music/main/EventManagerTaskKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/samsung/android/app/music/model/milkevent/EventPopup;)Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;
    .locals 6

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    invoke-static {}, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->values()[Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 521
    invoke-virtual {v3}, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->getPopupType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public static final a(Lcom/samsung/android/app/music/model/milkevent/EventPopupList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/milkevent/EventPopupList;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkevent/EventPopupList;->getEventPopupList()Ljava/util/ArrayList;

    move-result-object p0

    const-string v1, "eventPopupList"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 525
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    const-string v2, "it"

    .line 514
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->getPopupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
