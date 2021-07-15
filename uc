#!/bin/bash

MAIN_BRANCH=main
STORY_PREFIX="story"
FEATURE_PREFIX="feature"
ORIGIN="origin"

deprication_notice(){
    echo "=================================="
    echo "Feature is in development state... "
    echo "=================================="
}
create_branch(){
    branchName=$1
    branchFrom=$2
    git fetch origin $branchFrom:$branchFrom
    git checkout -b $branchName $branchFrom
    echo "Created $branchName with Destination -> $branchFrom"
}

reset_branch(){
    git checkout .
    git clean -df
    git pull
}

publish_branch(){
    case "$1" in
        story)
            echo "Publish Story branch $1"
        ;;
        sprint)
            echo "Publish sprint branch $1"
            ;;
    feature)
            echo "Publish Feature branch from $1"
            ;;
    esac
}

branch_manager(){

    case "$2" in
        start)
            case "$1" in
                story)
                echo "Please enter Sprint Number (e.g 19)"
                read sprintNumber
                echo "Please enter new story ID (e.g uv-1234)"
                read storyId
                create_branch $STORY_PREFIX/$storyId sprint-$sprintNumber
                ;;
                sprint)
                    echo "Please enter Sprint Number (e.g 19)"
                    read sprintNumber
                    create_branch sprint-$sprintNumber qa/staging
                ;;
                feature)
                    echo "Please enter story ID, if any (e.g uv-1234)"
                    read storyId
                    [ "$storyId" == "" ] && echo "Story is not specified, please enter sprint number" && read sprintNumber
                    echo "Please enter task ID"
                    read featureId
                    echo "Note: Your local uncommited changes will be deleted. [Yes|No] :"
                    read agree
                    if [[ "$agree" == "Yes" || $agree == "Y" || $agree == "y" || $agree == "" ]]; then
                        reset_branch
                        [ "$storyId" != "" ] && create_branch $FEATURE_PREFIX/$featureId $STORY_PREFIX-$storyId
                        [ "$storyId" == "" ] && create_branch $FEATURE_PREFIX/$featureId sprint-$sprintNumber
                    fi
                ;;
            esac
        ;;
        publish)
            case "$1" in
                story)
                echo "Publish Story"
                ;;
                sprint)
                echo "Publish Sprint"
                ;;
                feature)
                echo "Publish Feature"
                ;;
            esac
        ;;
        reset)
            echo "Resetting Feature branch"
            reset_branch
        ;;
    esac

}


if [ $# != 0 ]; then
    branch_manager $@
fi
