.class Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
