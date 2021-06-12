.class final Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$onCreate$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$onCreate$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity$onCreate$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerSearchActivity;->onBackPressed()V

    return-void
.end method
