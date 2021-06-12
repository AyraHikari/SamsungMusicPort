.class public final Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;
.super Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MusicIndexViewable"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "columnName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi$Music;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi$Music;-><init>()V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;-><init>(Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 353
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;-><init>(Ljava/lang/String;I)V

    return-void
.end method
