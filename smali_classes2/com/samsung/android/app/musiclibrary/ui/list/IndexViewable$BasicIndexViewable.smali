.class public final Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$BasicIndexViewable;
.super Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BasicIndexViewable"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    const-string v0, "columnName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 351
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;-><init>(Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 350
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$BasicIndexViewable;-><init>(Ljava/lang/String;I)V

    return-void
.end method
