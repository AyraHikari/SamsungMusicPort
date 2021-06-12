.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;,
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;)V
    .locals 3

    const/4 v0, 0x4

    .line 40
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$1;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver;-><init>([ILcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    return-void

    :array_0
    .array-data 4
        0x2
        0x0
        0x1
        0x3
    .end array-data
.end method
