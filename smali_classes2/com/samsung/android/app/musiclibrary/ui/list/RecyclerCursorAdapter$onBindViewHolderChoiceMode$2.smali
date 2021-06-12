.class public final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$onBindViewHolderChoiceMode$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderChoiceMode(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$onBindViewHolderChoiceMode$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 384
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$onBindViewHolderChoiceMode$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$onBindViewHolderChoiceMode$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getContentDescription$musicLibrary_release()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 385
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$onBindViewHolderChoiceMode$2;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->sendAccessibilityEvent(I)V

    return-void
.end method
