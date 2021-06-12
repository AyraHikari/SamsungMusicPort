.class Landroid/support/v7/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$6;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1138
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$6;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$6;->this$0:Landroid/support/v7/widget/SearchView;

    .line 1142
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/16 v2, 0x17

    if-ne p2, v2, :cond_0

    .line 1144
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 1145
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1151
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$6;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1162
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$6;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$6;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 1163
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 1164
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$6;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1169
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$6;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->access$100(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1170
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-ne p3, v1, :cond_3

    const/16 p3, 0x42

    if-ne p2, p3, :cond_3

    .line 1172
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 1175
    iget-object p1, p0, Landroid/support/v7/widget/SearchView$6;->this$0:Landroid/support/v7/widget/SearchView;

    const/4 p2, 0x0

    iget-object p3, p0, Landroid/support/v7/widget/SearchView$6;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object p3, p3, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object p3

    .line 1176
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1175
    invoke-virtual {p1, v2, p2, p3}, Landroid/support/v7/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    return v2
.end method
