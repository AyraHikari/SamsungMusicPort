.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onCreate$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onCreate$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 135
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onCreate$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;I)V

    .line 139
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onCreate$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onCreate$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 143
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onCreate$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onCreate$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;I)V

    goto :goto_0

    .line 136
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
