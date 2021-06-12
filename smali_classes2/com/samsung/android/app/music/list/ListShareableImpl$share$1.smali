.class final Lcom/samsung/android/app/music/list/ListShareableImpl$share$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/ListShareableImpl;->m_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/ListShareableImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/ListShareableImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListShareableImpl$share$1;->a:Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I[J)V
    .locals 1

    .line 33
    iget-object p1, p0, Lcom/samsung/android/app/music/list/ListShareableImpl$share$1;->a:Lcom/samsung/android/app/music/list/ListShareableImpl;

    const-string v0, "ids"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/ListShareableImpl;->a(Lcom/samsung/android/app/music/list/ListShareableImpl;[J)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/list/ListShareableImpl$share$1;->a:Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/ListShareableImpl;->b(Lcom/samsung/android/app/music/list/ListShareableImpl;[J)V

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/ListShareableImpl$share$1;->a:Lcom/samsung/android/app/music/list/ListShareableImpl;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/ListShareableImpl;->a(Ljava/lang/String;)V

    return-void
.end method
