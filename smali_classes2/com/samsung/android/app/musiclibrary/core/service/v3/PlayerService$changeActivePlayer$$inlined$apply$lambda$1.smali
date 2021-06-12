.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$changeActivePlayer$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->changeActivePlayer(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $tag$inlined:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$changeActivePlayer$$inlined$apply$lambda$1;->$tag$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    .line 320
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;->getTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$changeActivePlayer$$inlined$apply$lambda$1;->$tag$inlined:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    .line 321
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;->getTag()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$changeActivePlayer$$inlined$apply$lambda$1;->$tag$inlined:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
