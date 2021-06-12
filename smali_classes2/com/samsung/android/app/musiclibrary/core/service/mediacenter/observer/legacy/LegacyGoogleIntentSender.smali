.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V
    .locals 2

    const/4 v0, 0x4

    .line 40
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver;-><init>([ILcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x0
        0x1
        0x3
    .end array-data
.end method
