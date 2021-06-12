.class public final Lcom/samsung/android/app/music/list/local/SpotifyManager$$special$$inlined$observable$1;
.super Lkotlin/properties/ObservableProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/SpotifyManager;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/properties/ObservableProperty<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/samsung/android/app/music/list/local/SpotifyManager;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/samsung/android/app/music/list/local/SpotifyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$$special$$inlined$observable$1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    .line 33
    invoke-direct {p0, p2}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty<",
            "*>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->h(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$$special$$inlined$observable$1;->b:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->i(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V

    :goto_0
    return-void
.end method
