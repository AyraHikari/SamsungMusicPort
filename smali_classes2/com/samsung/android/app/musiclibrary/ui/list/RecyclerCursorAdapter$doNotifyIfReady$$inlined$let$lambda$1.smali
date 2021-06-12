.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$doNotifyIfReady$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->doNotifyIfReady(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

.field final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$doNotifyIfReady$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$doNotifyIfReady$$inlined$let$lambda$1;->b:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "UiList"

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$doNotifyIfReady$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " notify is ready with delay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$doNotifyIfReady$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$doNotifyIfReady$$inlined$let$lambda$1;->b:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->doNotifyIfReady(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
